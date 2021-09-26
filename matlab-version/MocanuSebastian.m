function varargout = MocanuSebastian(varargin)
% MOCANUSEBASTIAN MATLAB code for MocanuSebastian.fig
%      MOCANUSEBASTIAN, by itself, creates a new MOCANUSEBASTIAN or raises the existing
%      singleton*.
%
%      H = MOCANUSEBASTIAN returns the handle to a new MOCANUSEBASTIAN or the handle to
%      the existing singleton*.
%
%      MOCANUSEBASTIAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MOCANUSEBASTIAN.M with the given input arguments.
%
%      MOCANUSEBASTIAN('Property','Value',...) creates a new MOCANUSEBASTIAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MocanuSebastian_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MocanuSebastian_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MocanuSebastian

% Last Modified by GUIDE v2.5 29-Apr-2021 17:22:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MocanuSebastian_OpeningFcn, ...
                   'gui_OutputFcn',  @MocanuSebastian_OutputFcn, ...
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


% --- Executes just before MocanuSebastian is made visible.
function MocanuSebastian_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MocanuSebastian (see VARARGIN)

% Choose default command line output for MocanuSebastian
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MocanuSebastian wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MocanuSebastian_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function Logo_Poli_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Logo_Poli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(hObject);
imshow('logo-poli.png');
handles.axe(1) = gca;
guidata(axe1, handles);
% Hint: place code in OpeningFcn to populate Logo_Poli


% --- Executes during object creation, after setting all properties.
function Logo_Facultate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Logo_Facultate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(hObject);
imshow('logo-facultate.png');
handles.axe(1) = gca;
guidata(axe1, handles);
% Hint: place code in OpeningFcn to populate Logo_Facultate


% --- Executes on button press in Centric.
function Centric_Callback(hObject, eventdata, handles)
% hObject    handle to Centric (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.imagini);
imshow('centric.png');


% --- Executes during object creation, after setting all properties.
function Centric_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Centric (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in Excentric.
function Excentric_Callback(hObject, eventdata, handles)
% hObject    handle to Excentric (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.imagini);
imshow('excentric.png');


% --- Executes during object creation, after setting all properties.
function Excentric_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Excentric (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function imagini_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imagini (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
handles.axe(3) = gca; 
set(handles.axe(3), 'Visible','off');
guidata(axe3, handles);
set(AxesHandle, 'Units', 'pixels', 'Position', [10, 10, 50, 50]);

% Hint: place code in OpeningFcn to populate imagini


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
closereq(); 
