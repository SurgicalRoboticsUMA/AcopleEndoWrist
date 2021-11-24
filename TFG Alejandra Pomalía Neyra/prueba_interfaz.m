function varargout = prueba_interfaz(varargin)
% PRUEBA_INTERFAZ MATLAB code for prueba_interfaz.fig
%      PRUEBA_INTERFAZ, by itself, creates a new PRUEBA_INTERFAZ or raises the existing
%      singleton*.
%
%      H = PRUEBA_INTERFAZ returns the handle to a new PRUEBA_INTERFAZ or the handle to
%      the existing singleton*.
%
%      PRUEBA_INTERFAZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRUEBA_INTERFAZ.M with the given input arguments.
%
%      PRUEBA_INTERFAZ('Property','Value',...) creates a new PRUEBA_INTERFAZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before prueba_interfaz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to prueba_interfaz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help prueba_interfaz

% Last Modified by GUIDE v2.5 24-Nov-2019 10:25:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @prueba_interfaz_OpeningFcn, ...
                   'gui_OutputFcn',  @prueba_interfaz_OutputFcn, ...
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


% --- Executes just before prueba_interfaz is made visible.
function prueba_interfaz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to prueba_interfaz (see VARARGIN)

% Choose default command line output for prueba_interfaz
handles.output = hObject;

%% Irene:
% handles es una variable global que se usa en todo el interfaz. Aqui fuera
% es donde debes definir los suscriptores y los publisher de ROS. Lo que yo
% suelo hacer es ponerlo de esta manera:
% handles.sub[0] = .... (tantos como subscriber tenga)
% handles.pub[0] = .....
% Ten en cuenta, que antes de hacer esto tendras que iniciar ROS(rosinit). 


% Update handles structure
guidata(hObject, handles); %% Esto lo que hace es actualizar la varibale global handles.

% UIWAIT makes prueba_interfaz wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = prueba_interfaz_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in motor1_up.
function motor1_up_Callback(hObject, eventdata, handles)
% hObject    handle to motor1_up (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%% Irene:
% Aqui es donde le pones lo que quieres que haga cuando le das a este
% boton, que será aumentar el valor de la posición del motor, y mandarla
% por el topic correspondiente. Tendrás que leer la posición actual (es
% decir, suscribirte al topic "../pos" del servo correspondiente, y leer el
% valor), y sumarle una cantidad. 
% Con el down igual, y lo mismo para los cuatro motores. 


% --- Executes on button press in motor1_down.
function motor1_down_Callback(hObject, eventdata, handles)
% hObject    handle to motor1_down (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
