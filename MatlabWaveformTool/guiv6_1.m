function varargout = guiv6_1(varargin)
% GUIV6_1 MATLAB code for guiv6_1.fig
%      GUIV6_1, by itself, creates a new GUIV6_1 or raises the existing
%      singleton*.
%
%      H = GUIV6_1 returns the handle to a new GUIV6_1 or the handle to
%      the existing singleton*.
%
%      GUIV6_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIV6_1.M with the given input arguments.
%
%      GUIV6_1('Property','Value',...) creates a new GUIV6_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiv6_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiv6_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiv6_1

% Last Modified by GUIDE v2.5 27-Jun-2016 08:58:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiv6_1_OpeningFcn, ...
                   'gui_OutputFcn',  @guiv6_1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before guiv6_1 is made visible.
function guiv6_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiv6_1 (see VARARGIN)

% Choose default command line output for guiv6_1
handles.output = hObject;
handles.waveform = Waveform(handles.axes_Pulse, handles.axes_Waveform);      %represents a collection of pulse objects

%update the electrode group box with array of all electrode edit boxes
handles.PANEL_electrodesPolarity.UserData = ...
    [   handles.EB_electrode_1, handles.EB_electrode_2, handles.EB_electrode_3, handles.EB_electrode_4, ...
        handles.EB_electrode_5, handles.EB_electrode_6, handles.EB_electrode_7, handles.EB_electrode_8, ...
        handles.EB_electrode_9, handles.EB_electrode_10, handles.EB_electrode_11, handles.EB_electrode_12, ...
        handles.EB_electrode_13, handles.EB_electrode_14, handles.EB_electrode_15, handles.EB_electrode_16, ...
        handles.EB_electrode_17, handles.EB_electrode_18, handles.EB_electrode_19, handles.EB_electrode_20, ...
        handles.EB_electrode_21, handles.EB_electrode_22, handles.EB_electrode_23, handles.EB_electrode_24, ...
        handles.EB_electrode_25, handles.EB_electrode_26, handles.EB_electrode_27, handles.EB_electrode_28, ...
        handles.EB_electrode_29, handles.EB_electrode_30, handles.EB_electrode_31, handles.EB_electrode_32];
    
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiv6_1 wait for user response (see UIRESUME)
% uiwait(handles.mainFig);


% --- Outputs from this function are returned to the command line.
function varargout = guiv6_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkbox9.
function checkbox9_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox9


% --- Executes on button press in checkbox10.
function checkbox10_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox10


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in checkbox11.
function checkbox11_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox11


% --- Executes on button press in checkbox12.
function checkbox12_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox12


% --- Executes on button press in checkbox7.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7


% --- Executes on button press in checkbox8.
function checkbox8_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox8



function edit47_Callback(hObject, eventdata, handles)
% hObject    handle to edit47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit47 as text
%        str2double(get(hObject,'String')) returns contents of edit47 as a double


% --- Executes during object creation, after setting all properties.
function edit47_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function SLIDE_electrode_2_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_2);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_3_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_3);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_4_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_4);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_5_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_5);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_6_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_6);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_7_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_7);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_8_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_8);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_9_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_9);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_10_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_10);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_11_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_11);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_12_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_12);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_13_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_13);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_14_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_14);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_15_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_15);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_16_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_16);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_17_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_17);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_18_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_18);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_19_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_19);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_20_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_20);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_21_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_21);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_22_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_22);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_23_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_23);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_24_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_24);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_25_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_25);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_26_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_26);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_27_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_27);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_28_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_28);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_29_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_29);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_30_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_30);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_31_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_31);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SLIDE_electrode_32_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ElectrodeSlideCBHelper(hObject,handles.EB_electrode_32);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

%function called whenever an electrode slider callback is called
function ElectrodeSlideCBHelper(hObject, hEdit)
    hEdit.String = num2str(hObject.Value);
    
    
% --- Executes on slider movement.
function SLIDE_electrode_1_Callback(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

ElectrodeSlideCBHelper(hObject,handles.EB_electrode_1);

% --- Executes during object creation, after setting all properties.
function SLIDE_electrode_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SLIDE_electrode_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function EB_FixedAmp_Callback(hObject, eventdata, handles)
% hObject    handle to EB_FixedAmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_FixedAmp as text
%        str2double(get(hObject,'String')) returns contents of EB_FixedAmp as a double

%round text to nearest tens
hObject.String = num2str(round(str2double(hObject.String), -1));

% --- Executes during object creation, after setting all properties.
function EB_FixedAmp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_FixedAmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_MinStochAmp_Callback(hObject, eventdata, handles)
% hObject    handle to EB_MinStochAmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_MinStochAmp as text
%        str2double(get(hObject,'String')) returns contents of EB_MinStochAmp as a double


% --- Executes during object creation, after setting all properties.
function EB_MinStochAmp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_MinStochAmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_MaxStochAmp_Callback(hObject, eventdata, handles)
% hObject    handle to EB_MaxStochAmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_MaxStochAmp as text
%        str2double(get(hObject,'String')) returns contents of EB_MaxStochAmp as a double


% --- Executes during object creation, after setting all properties.
function EB_MaxStochAmp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_MaxStochAmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_StartRampAmp_Callback(hObject, eventdata, handles)
% hObject    handle to EB_StartRampAmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_StartRampAmp as text
%        str2double(get(hObject,'String')) returns contents of EB_StartRampAmp as a double


% --- Executes during object creation, after setting all properties.
function EB_StartRampAmp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_StartRampAmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit52_Callback(hObject, eventdata, handles)
% hObject    handle to edit52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit52 as text
%        str2double(get(hObject,'String')) returns contents of edit52 as a double


% --- Executes during object creation, after setting all properties.
function edit52_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_RampAmpStep_Callback(hObject, eventdata, handles)
% hObject    handle to EB_RampAmpStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_RampAmpStep as text
%        str2double(get(hObject,'String')) returns contents of EB_RampAmpStep as a double


% --- Executes during object creation, after setting all properties.
function EB_RampAmpStep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_RampAmpStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in PB_AddPhase.
function PB_AddPhase_Callback(hObject, eventdata, handles)
% hObject    handle to PB_AddPhase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    %Set the amplitude based on which radio button is selected in the phase
    %amplitude
    iterations = str2double(handles.EB_numPhases.String);
    if isnan(iterations)
        return;
    end
    
    %preallocate the phases in selected pulse
    newPhases = repmat(Phase([],[],[],[],[],[],[],[],[],[],[]), 1,iterations);
    if (handles.waveform.NumPulses == 0)
        np = Pulse();
        handles.waveform.AddPulse(np);
        handles.waveform.SelectedPulse = np;
    end
    
    for i=1:iterations
        switch (handles.BG_PhaseAmp.SelectedObject.Tag)
            case 'RB_FixedAmp'
                if isnan(str2double(handles.EB_FixedAmp.String))
                    minAmp=0; maxAmp=0;
                else
                    minAmp=round(str2double(handles.EB_FixedAmp.String)); 
                    maxAmp=minAmp;
                end
                ampStep=0;
                ampType=PhaseTypes.Fixed;
                ampVal=minAmp;

            case 'RB_StochasticAmp'
                if isnan(str2double(handles.EB_MinStochAmp.String))
                    minAmp=0;
                else
                    minAmp=round(str2double(handles.EB_MinStochAmp.String));
                end
                if isnan(str2double(handles.EB_MaxStochAmp.String))
                    maxAmp=0;
                else
                    maxAmp=round(str2double(handles.EB_MaxStochAmp.String));
                end
                ampStep=0;
                ampType=PhaseTypes.Stochastic;
                %determine the current state by generating a random integer
                ampVal=randi([minAmp,maxAmp],1,1);
            case 'RB_RampAmp'
                if isnan(str2double(handles.EB_StartRampAmp.String))
                    minAmp=0;
                else
                    minAmp=round(str2double(handles.EB_StartRampAmp.String));
                end
                if isnan(str2double(handles.EB_RampAmpStep.String))
                    ampStep=0;
                else
                    ampStep=str2double(handles.EB_RampAmpStep.String);
                end
                if isnan(str2double(handles.EB_MaxRampAmp.String))
                    maxAmp=0;
                else
                    maxAmp=str2double(handles.EB_MaxRampAmp.String);
                end
                ampType=PhaseTypes.Ramped;
                ampVal=minAmp;
        end
        switch handles.BG_PhaseWidth.SelectedObject.Tag
            case 'RB_FixedWidth'
                if isnan(str2double(handles.EB_FixedWidth.String))
                    minWidth=0;
                    maxWidth=0;
                else
                    minWidth=round(str2double(handles.EB_FixedWidth.String));
                    maxWidth=minWidth;
                end
                widthStep=0;
                widthType=PhaseTypes.Fixed;
                widthVal=minWidth;
            case 'RB_StochWidth'
                if isnan(str2double(handles.EB_MinStochWidth.String))
                    minWidth=0;
                else
                    minWidth=round(str2double(handles.EB_MinStochWidth.String));
                end
                if isnan(str2double(handles.EB_MaxStochWidth.String))
                    maxWidth=0;
                else
                    maxWidth=round(str2double(handles.EB_MaxStochWidth.String));
                end
                widthStep=0;
                widthType=PhaseTypes.Stochastic;
                widthVal=randi([minWidth,maxWidth],1,1);
            case 'RB_RampWidth'
                if isnan(str2double(handles.EB_RampWidthStart.String))
                    minWidth=0;
                else
                    minWidth=str2double(handles.EB_RampWidthStart.String);
                end
                if isnan(str2double(handles.EB_RampWidthMax.String))
                    maxWidth=0;
                else
                    maxWidth=str2double(handles.EB_RampWidthMax.String);
                end
                if isnan(str2double(handles.EB_RampWidthStep.String))
                    widthStep=0;
                else
                    widthStep=round(str2double(handles.EB_RampWidthStep.String));
                end
                widthType=PhaseTypes.Ramped;
                widthVal=minWidth;
        end
         %create a Phase object with the above parameters, adding it to the
         %pulse object 
        
        newPhases(i) = (Phase(  PhaseTypes.RectConfigurable, ampVal, minAmp, maxAmp, ampStep, ...
                                widthVal, minWidth, maxWidth, widthStep, ampType, widthType));
        %if ramped type amplitude, add an additional phase
        %if (ampType==PhaseTypes.Ramped)
            %handles.waveform.AddPhase(Phase(-ampVal, minAmp, maxAmp, ampStep, widthVal, minWidth, maxWidth, widthStep, ampType, widthType));
        %end
    end
    %add all iterations to waveform
    handles.waveform.AddPhases(newPhases);
    handles.waveform.PlotWaveform(100);
    guidata(hObject, handles);
    

function EB_numPhases_Callback(hObject, eventdata, handles)
% hObject    handle to EB_numPhases (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_numPhases as text
%        str2double(get(hObject,'String')) returns contents of EB_numPhases as a double
if isnan(str2double(hObject.String)) || (mod(str2double(hObject.String),1) ~= 0)
    warningPopUpMenu(Constants.INT_REQUIRED_ERROR);
    hObject.String='';
end

% --- Executes during object creation, after setting all properties.
function EB_numPhases_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_numPhases (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_FixedWidth_Callback(hObject, eventdata, handles)
% hObject    handle to EB_FixedWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_FixedWidth as text
%        str2double(get(hObject,'String')) returns contents of EB_FixedWidth as a double


% --- Executes during object creation, after setting all properties.
function EB_FixedWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_FixedWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_MinStochWidth_Callback(hObject, eventdata, handles)
% hObject    handle to EB_MinStochWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_MinStochWidth as text
%        str2double(get(hObject,'String')) returns contents of EB_MinStochWidth as a double


% --- Executes during object creation, after setting all properties.
function EB_MinStochWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_MinStochWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_MaxStochWidth_Callback(hObject, eventdata, handles)
% hObject    handle to EB_MaxStochWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_MaxStochWidth as text
%        str2double(get(hObject,'String')) returns contents of EB_MaxStochWidth as a double


% --- Executes during object creation, after setting all properties.
function EB_MaxStochWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_MaxStochWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_RampWidthStart_Callback(hObject, eventdata, handles)
% hObject    handle to EB_RampWidthStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_RampWidthStart as text
%        str2double(get(hObject,'String')) returns contents of EB_RampWidthStart as a double


% --- Executes during object creation, after setting all properties.
function EB_RampWidthStart_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_RampWidthStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_RampWidthMax_Callback(hObject, eventdata, handles)
% hObject    handle to EB_RampWidthMax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_RampWidthMax as text
%        str2double(get(hObject,'String')) returns contents of EB_RampWidthMax as a double


% --- Executes during object creation, after setting all properties.
function EB_RampWidthMax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_RampWidthMax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_RampWidthStep_Callback(hObject, eventdata, handles)
% hObject    handle to EB_RampWidthStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_RampWidthStep as text
%        str2double(get(hObject,'String')) returns contents of EB_RampWidthStep as a double


% --- Executes during object creation, after setting all properties.
function EB_RampWidthStep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_RampWidthStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ElectrodeEditHelper(hObject, hSlide)
    num = str2double(hObject.String);
    if (mod(num,1) == 0) && num>=0 && num<=100
        if hSlide.Value ~= num
            hSlide.Value = num;
        end
    else
    %error
    warningPopUpMenu(Constants.INVALID_NUMBER_ERROR);
    end

function EB_electrode_1_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_1 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_1 as a double

%make sure value entered is integer between 0 and 100
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_1);

% --- Executes during object creation, after setting all properties.
function EB_electrode_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_32_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_32 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_32 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_32)

% --- Executes during object creation, after setting all properties.
function EB_electrode_32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function EB_electrode_31_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_31 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_31 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_31);

% --- Executes during object creation, after setting all properties.
function EB_electrode_31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function EB_electrode_30_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_30 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_30 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_30);

% --- Executes during object creation, after setting all properties.
function EB_electrode_30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function EB_electrode_29_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_29 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_29 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_29);

% --- Executes during object creation, after setting all properties.
function EB_electrode_29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function EB_electrode_28_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_28 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_28 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_28);

% --- Executes during object creation, after setting all properties.
function EB_electrode_28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function EB_electrode_27_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_27 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_27 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_27);

% --- Executes during object creation, after setting all properties.
function EB_electrode_27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function EB_electrode_26_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_26 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_26 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_26);

% --- Executes during object creation, after setting all properties.
function EB_electrode_26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function EB_electrode_25_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_25 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_25 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_25);

% --- Executes during object creation, after setting all properties.
function EB_electrode_25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function EB_electrode_24_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_24 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_24 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_24);

% --- Executes during object creation, after setting all properties.
function EB_electrode_24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function EB_electrode_23_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_23 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_23 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_23);

% --- Executes during object creation, after setting all properties.
function EB_electrode_23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function EB_electrode_22_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_22 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_22 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_22);

% --- Executes during object creation, after setting all properties.
function EB_electrode_22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_21_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_21 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_21 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_21);

% --- Executes during object creation, after setting all properties.
function EB_electrode_21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_20_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_20 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_20 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_20);

% --- Executes during object creation, after setting all properties.
function EB_electrode_20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_19_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_19 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_19 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_19);

% --- Executes during object creation, after setting all properties.
function EB_electrode_19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_18_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_18 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_18 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_18);

% --- Executes during object creation, after setting all properties.
function EB_electrode_18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_17_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_17 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_17 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_17);

% --- Executes during object creation, after setting all properties.
function EB_electrode_17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_16_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_16 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_16 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_16);

% --- Executes during object creation, after setting all properties.
function EB_electrode_16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_15_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_15 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_15 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_15);

% --- Executes during object creation, after setting all properties.
function EB_electrode_15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_14_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_14 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_14 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_14);

% --- Executes during object creation, after setting all properties.
function EB_electrode_14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_13_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_13 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_13 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_13);

% --- Executes during object creation, after setting all properties.
function EB_electrode_13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_12_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_12 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_12 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_12);

% --- Executes during object creation, after setting all properties.
function EB_electrode_12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_11_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_11 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_11 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_11);

% --- Executes during object creation, after setting all properties.
function EB_electrode_11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_10_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_10 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_10 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_10);

% --- Executes during object creation, after setting all properties.
function EB_electrode_10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_9_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_9 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_9 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_9);

% --- Executes during object creation, after setting all properties.
function EB_electrode_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_8_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_8 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_8 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_8);

% --- Executes during object creation, after setting all properties.
function EB_electrode_8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_7_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_7 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_7 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_7);

% --- Executes during object creation, after setting all properties.
function EB_electrode_7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_6_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_6 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_6 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_6);

% --- Executes during object creation, after setting all properties.
function EB_electrode_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function EB_electrode_5_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_5 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_5 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_5);

% --- Executes during object creation, after setting all properties.
function EB_electrode_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function EB_electrode_4_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_4 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_4 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_4);

% --- Executes during object creation, after setting all properties.
function EB_electrode_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function EB_electrode_3_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_3 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_3 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_3);

% --- Executes during object creation, after setting all properties.
function EB_electrode_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_electrode_2_Callback(hObject, eventdata, handles)
% hObject    handle to EB_electrode_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_electrode_2 as text
%        str2double(get(hObject,'String')) returns contents of EB_electrode_2 as a double
ElectrodeEditHelper(hObject, handles.SLIDE_electrode_2);

% --- Executes during object creation, after setting all properties.
function EB_electrode_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_electrode_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in PB_ClearAll.
function PB_ClearAll_Callback(hObject, eventdata, handles)
% hObject    handle to PB_ClearAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.waveform = Waveform(handles.axes_Pulse, handles.axes_Waveform);      %clears waveform object
cla(handles.axes_Pulse, 'reset');
cla(handles.axes_Waveform, 'reset');
guidata(hObject,handles);

function EB_MaxRampAmp_Callback(hObject, eventdata, handles)
% hObject    handle to EB_MaxRampAmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_MaxRampAmp as text
%        str2double(get(hObject,'String')) returns contents of EB_MaxRampAmp as a double


% --- Executes during object creation, after setting all properties.
function EB_MaxRampAmp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_MaxRampAmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EB_Refresh_Callback(hObject, eventdata, handles)
% hObject    handle to EB_Refresh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EB_Refresh as text
%        str2double(get(hObject,'String')) returns contents of EB_Refresh as a double




% --- Executes during object creation, after setting all properties.
function EB_Refresh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EB_Refresh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in PB_Refresh.
function PB_Refresh_Callback(hObject, eventdata, handles)
% hObject    handle to PB_Refresh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num=str2double(handles.EB_Refresh.String);
if isnan(num)
    num=0;
end

handles.waveform.RefreshPulse(num);
handles.waveform.PlotWaveform(100);


% --- Executes on button press in PB_PulseEditor.
function PB_PulseEditor_Callback(hObject, eventdata, handles)
% hObject    handle to PB_PulseEditor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

PulseEditor(handles.waveform);      %pass the waveform handle to Pulse Editor

function EB_ForceInteger(hEdit)
if isnan(str2double(hEdit.String))
    warningPopUpMenu(Constants.INT_REQUIRED_ERROR);
    hEdit.String = '';
end


% --- Executes on selection change in POP_ModeSelect.
function POP_ModeSelect_Callback(hObject, eventdata, handles)
% hObject    handle to POP_ModeSelect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns POP_ModeSelect contents as cell array
%        contents{get(hObject,'Value')} returns selected item from POP_ModeSelect


% --- Executes during object creation, after setting all properties.
function POP_ModeSelect_CreateFcn(hObject, eventdata, handles)
% hObject    handle to POP_ModeSelect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

hObject.String = {  Constants.MODE_SANDBOX, Constants.MODE_FALCON, Constants.MODE_NINJA_1, ...
                    Constants.MODE_NINJA_2, Constants.MODE_WILSON_1, Constants.MODE_WILSON_2};


% --- Executes on selection change in POP_electrodes.
function POP_electrodes_Callback(hObject, eventdata, handles)
% hObject    handle to POP_electrodes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns POP_electrodes contents as cell array
%        contents{get(hObject,'Value')} returns selected item from POP_electrodes


% --- Executes during object creation, after setting all properties.
function POP_electrodes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to POP_electrodes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

for i=1:32
    hObject.String{i} = num2str(i);
end


% --- Executes on button press in PB_plotElectrodeWaveform.
function PB_plotElectrodeWaveform_Callback(hObject, eventdata, handles)
% hObject    handle to PB_plotElectrodeWaveform (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
electrodeNum = str2double(handles.POP_electrodes.String{handles.POP_electrodes.Value});
coefficient = str2double(handles.PANEL_electrodesPolarity.UserData(electrodeNum).String);
handles.waveform.PlotWaveform(coefficient);