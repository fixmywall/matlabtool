classdef Waveform < handle
    %WAVEFORM Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Pulses = Pulse.empty;
        SelectedPulse = [];
        PulseAxes = [];
        WaveformAxes = [];
        Scale = 100;        %represents percent from -100 to 100
        
        Constraints = [];
    end
    
    methods  
        function w = Waveform(handles)
            w.PulseAxes = handles.axes_Pulse;
            w.WaveformAxes = handles.axes_Waveform;
            w.Constraints = handles.constraints;
        end    
        
        function n = NumUserPhases(obj)
            n=0;
            for i=1:obj.NumPulses()
                n = n + obj.Pulses(i).NumUserPhases();
            end
        end
        
        %creates a new empty pulse, adds to Pulses and sets selectedpulse
        %to it
        function NewPulse(obj)
            newPulse = Pulse(obj.Constraints);
            obj.AddPulse(newPulse);
            obj.SelectedPulse = newPulse;
        end
        
        function num = NumPulses(obj)
            num = length(obj.Pulses);
        end
        
        function GeneratePhases(obj, ampType, widthType, minAmp, maxAmp, ampStep, minWidth, maxWidth, widthStep, num)
            %if waveform is empty, add a new pulse
            if (obj.NumPulses() == 0)
                obj.NewPulse();
            end
            
            %if number of phases in the selected pulse exceeds limit,
            %display error and return
            if num + obj.SelectedPulse.NumUserPhases() > obj.Constraints.MaxUserPhasesPerPulse
                warningPopUpMenu(Constants.ERROR_TOO_MANY_PHASES);
                return;
            end
            obj.SelectedPulse.GeneratePhases(ampType, widthType, minAmp, maxAmp, ampStep, minWidth, maxWidth, widthStep, num); 
            
            %plot the resulting waveform
            obj.PlotWaveform();
        end
        
        function AddPulse(obj, pulse)
            if obj.NumPulses() == 0
                obj.SelectedPulse = pulse;
            end
            obj.Pulses(end+1)=pulse;
        end
        
        function AddPulses(obj, pulses)         %pulses is an array of pulse handles
            if obj.NumPulses() == 0
                obj.SelectedPulse = pulses(1);
            end

            obj.Pulses= [obj.Pulses,pulses];
        end       
        
        function SelectPulse(obj,i)             %select the pulse indexed in Pulses by i
            if (i>obj.NumPulses() || i<1)
                return;
            end
            obj.SelectedPulse=obj.Pulses(i);
            obj.PlotSelectedPulse();
        end
        
        function RefreshPulse(obj, num)       %refreshes the pulse, generating n pulses with stochastic/ramping features
            refreshedPulses = repmat(Pulse(obj.Constraints),1,num);
            for i = 1:num
                refreshedPulses(i) = obj.SelectedPulse.refreshPulse(i);
            end
            obj.AddPulses(refreshedPulses);
        end

        function PlotSelectedPulse(obj)
            cla(obj.PulseAxes, 'reset');
            obj.SelectedPulse.PlotPulse(obj.PulseAxes, 0, 100);
        end
        
        %gets x and y axes arrays for plotting
        function Y = GetAxesData(obj)
            y = cell(1,obj.NumPulses());
            t = cell(1,obj.NumPulses());
            startTime = 0;
            for i = 1:obj.NumPulses
                Y_pulse = obj.Pulses(i).GetAxesData(startTime);
                t{i} = Y_pulse{1};
                y{i} = Y_pulse{2};
                startTime = t{i}(end);
            end
            
            Y{1,:} = cell2mat(t);
            Y{2,:} = cell2mat(y);
        end
        
        function PlotWaveform(obj)              %plots overall waveform and selected pulse
            cla(obj.WaveformAxes, 'reset');
            
            %get the axes data, and then plot the data onto waveformAxes
            Y = obj.GetAxesData();
            axes(obj.WaveformAxes);
            plot(Y{1}, obj.Scale/100* Y{2});
            obj.PlotSelectedPulse();
        end
        
        function Reset(obj)
            obj.Pulses = Pulse.empty;
            obj.SelectedPulse = [];
        end
        
        function TabulatePulses(obj, hTable)                %tabulates each pulse onto table pointed to be hTable
            hTable.Data = {};
            for i=1:obj.NumPulses()                         %for each pulse
                currentPulse = obj.Pulses(i);
                row{1}=currentPulse.NumUserPhases();
                row{2}='NA';
                row{3}='NA';
                hTable.Data = [hTable.Data;row];
            end
        end
        
        %wrapper for Pulse.SetPhaseWidth
        function SetPhaseWidth(obj, i, width)
            obj.SelectedPulse.SetPhaseWidth(i, width);
        end
        
        %wrapper for Pulse.SetPhaseAmplitude
        function SetPhaseAmplitude(obj, i, amp)
            obj.SelectedPulse.SetPhaseAmplitude(i, amp);
        end
        
        %used in falcon, makes n duplicates of the pulse
        function RepeatSelectedPulse(obj, num) 
            if num < 1
                num = 1;
            end
            newPulses = repmat(obj.SelectedPulse, 1, num);
            obj.Reset();
            obj.AddPulses(newPulses);
            obj.PlotWaveform();
        end
    end
end