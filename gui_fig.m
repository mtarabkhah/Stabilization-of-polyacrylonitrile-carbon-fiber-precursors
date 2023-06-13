function varargout = gui_fig(varargin)
% GUI_FIG M-file for gui_fig.fig
%      GUI_FIG, by itself, creates a new GUI_FIG or raises the existing
%      singleton*.
%
%      H = GUI_FIG returns the handle to a new GUI_FIG or the handle to
%      the existing singleton*.
%
%      GUI_FIG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_FIG.M with the given input arguments.
%
%      GUI_FIG('Property','Value',...) creates a new GUI_FIG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_fig_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_fig_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_fig

% Last Modified by GUIDE v2.5 16-Jan-2011 18:41:02

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @gui_fig_OpeningFcn, ...
    'gui_OutputFcn',  @gui_fig_OutputFcn, ...
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


% --- Executes just before gui_fig is made visible.
function gui_fig_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_fig (see VARARGIN)

% Choose default command line output for gui_fig
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_fig wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_fig_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


%% %%%%%%%%%%%%%%%%%%%%% Multi Filament %%%%%%%%%%%%%%%%%%%%%
% --------------------------------------------------------------------

% --- Executes on button press in MultiButton.
function MultiButton_Callback(hObject, eventdata, handles)
% hObject    handle to MultiButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Set_Visiblety(handles,'on','off','off');


% --- Executes when selected object is changed in MultiUIPanel.
function MultiUIPanel_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in MultiUIPanel
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
A = ['0.159   ';'1.22    ';'48000   ';'487     ';'295     ';'2.5     ';...
    '2       ';'0       ';'0       ';'0.13    ';'9999    ';'7.4e3   ';...
    '4.7e3   ';'12.7e3  ';'1.22e8  ';'1.22e8  ';'1.3e9   ';'25.8e3  ';...
    '25.8e3  ';'30e3    ';'0.0012  ';'1.98    ';'0.5     ';'0.306   ';...
    '0.0006  ';'0       ';'0.0214  ';'70      ';'0.0038  ';'850     ';...
    '-0.00319';'1230    ';'-0.5    ';'1236    ';'0       ';'1239    ';...
    '0.5     ';'1242    ';'0       ';'2000    ';'0       ';'2100    ';...
    '0       ';'2200    ';'0       ';'1000    ';'0       ';'1500    '];
switch hObject
%     case handles.MultiCase1
%         i = 1;
    case handles.MultiCase2
        A(1:6,:) = ['0.178   ';'1.22    ';'60000   ';'479     ';...
            '295     ';'2.4     '];
        A(27:48,:) = ['0.00525 ';'800     ';'-0.00071';...
            '1080    ';'0.0171  ';'1150    ';'-0.00667';'1420    ';...
            '-0.00359';'1810    ';'0.005   ';'2030    ';'-0.00571';...
            '2100    ';'0       ';'3000    ';'0       ';'3100    ';...
            '0       ';'1000    ';'0       ';'3000    '];
    case handles.MultiCase3
        A(1:6,:) = ['0.14    ';'1.22    ';'36000   ';'489     ';...
            '297     ';'2.5     '];
        A(27:48,:) = ['0.00475 ';'400     ';'-0.00221';...
            '1620    ';'0.00158 ';'2000    ';'-0.00257';'2700    ';...
            '-0.0069 ';'3000    ';'0       ';'3030    ';'0       ';...
            '3100    ';'0       ';'3200    ';'0       ';'3300    ';...
            '0       ';'1000    ';'0       ';'3000    '];
    case handles.MultiCase4
        A(1:6,:) = ['0.079   ';'1.22    ';'12000   ';'506     ';...
            '276     ';'2.8     '];
        A(27:48,:) = ['0.0185  ';'540     ';'0.0438  ';...
            '620     ';'0       ';'1150    ';'0       ';'1420    ';...
            '0       ';'1810    ';'0       ';'2030    ';'0       ';...
            '2100    ';'0       ';'3000    ';'0       ';'3100    ';...
            '0       ';'1000    ';'0       ';'1600    '];
    case handles.MultiNewCase
        for i = 1 : 48
            A(i,:) = '        ';
        end
end
set(handles.MI1EText,'String',A(1,:));set(handles.MI2EText,'String',A(2,:));
set(handles.MI3EText,'String',A(3,:));set(handles.MI4EText,'String',A(4,:));
set(handles.MI5EText,'String',A(5,:));set(handles.MI6EText,'String',A(6,:));
set(handles.MI7EText,'String',A(7,:));set(handles.MI8EText,'String',A(8,:));
set(handles.MI9EText,'String',A(9,:));set(handles.MI10EText,'String',A(10,:));
set(handles.MI11EText,'String',A(11,:));set(handles.MI12EText,'String',A(12,:));
set(handles.MI13EText,'String',A(13,:));set(handles.MI14EText,'String',A(14,:));
set(handles.MI15EText,'String',A(15,:));set(handles.MI16EText,'String',A(16,:));
set(handles.MI17EText,'String',A(17,:));set(handles.MI18EText,'String',A(18,:));
set(handles.MI19EText,'String',A(19,:));set(handles.MI20EText,'String',A(20,:));
set(handles.MI21EText,'String',A(21,:));set(handles.MI22EText,'String',A(22,:));
set(handles.MI23EText,'String',A(23,:));set(handles.MI24EText,'String',A(24,:));
set(handles.MI25EText,'String',A(25,:));set(handles.MI26EText,'String',A(26,:));
set(handles.MI27EText,'String',A(27,:));set(handles.MI28EText,'String',A(28,:));
set(handles.MI29EText,'String',A(29,:));set(handles.MI30EText,'String',A(30,:));
set(handles.MI31EText,'String',A(31,:));set(handles.MI32EText,'String',A(32,:));
set(handles.MI33EText,'String',A(33,:));set(handles.MI34EText,'String',A(34,:));
set(handles.MI35EText,'String',A(35,:));set(handles.MI36EText,'String',A(36,:));
set(handles.MI37EText,'String',A(37,:));set(handles.MI38EText,'String',A(38,:));
set(handles.MI39EText,'String',A(39,:));set(handles.MI40EText,'String',A(40,:));
set(handles.MI41EText,'String',A(41,:));set(handles.MI42EText,'String',A(42,:));
set(handles.MI43EText,'String',A(43,:));set(handles.MI44EText,'String',A(44,:));
set(handles.MI45EText,'String',A(45,:));set(handles.MI46EText,'String',A(46,:));
set(handles.MI47EText,'String',A(47,:));set(handles.MI48EText,'String',A(48,:));

% --- Executes on button press in MultiRunButton.
function MultiRunButton_Callback(hObject, eventdata, handles)
% hObject    handle to MultiRunButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Multi_Inputs(1) = str2double(get(handles.MI1EText,'String'));
Multi_Inputs(2) = str2double(get(handles.MI2EText,'String'));
Multi_Inputs(3) = str2double(get(handles.MI3EText,'String'));
Multi_Inputs(4) = str2double(get(handles.MI4EText,'String'));
Multi_Inputs(5) = str2double(get(handles.MI5EText,'String'));
Multi_Inputs(6) = str2double(get(handles.MI6EText,'String'));
Multi_Inputs(7) = str2double(get(handles.MI7EText,'String'));
Multi_Inputs(8) = str2double(get(handles.MI8EText,'String'));
Multi_Inputs(9) = str2double(get(handles.MI9EText,'String'));
Multi_Inputs(10) = str2double(get(handles.MI10EText,'String'));
Multi_Inputs(11) = str2double(get(handles.MI11EText,'String'));
Multi_Inputs(12) = str2double(get(handles.MI12EText,'String'));
Multi_Inputs(13) = str2double(get(handles.MI13EText,'String'));
Multi_Inputs(14) = str2double(get(handles.MI14EText,'String'));
Multi_Inputs(15) = str2double(get(handles.MI15EText,'String'));
Multi_Inputs(16) = str2double(get(handles.MI16EText,'String'));
Multi_Inputs(17) = str2double(get(handles.MI17EText,'String'));
Multi_Inputs(18) = str2double(get(handles.MI18EText,'String'));
Multi_Inputs(19) = str2double(get(handles.MI19EText,'String'));
Multi_Inputs(20) = str2double(get(handles.MI20EText,'String'));
Multi_Inputs(21) = str2double(get(handles.MI21EText,'String'));
Multi_Inputs(22) = str2double(get(handles.MI22EText,'String'));
Multi_Inputs(23) = str2double(get(handles.MI23EText,'String'));
Multi_Inputs(24) = str2double(get(handles.MI24EText,'String'));
Multi_Inputs(25) = str2double(get(handles.MI25EText,'String'));
Multi_Inputs(26) = str2double(get(handles.MI26EText,'String'));
Multi_Inputs(27) = str2double(get(handles.MI27EText,'String'));
Multi_Inputs(28) = str2double(get(handles.MI28EText,'String'));
Multi_Inputs(29) = str2double(get(handles.MI29EText,'String'));
Multi_Inputs(30) = str2double(get(handles.MI30EText,'String'));
Multi_Inputs(31) = str2double(get(handles.MI31EText,'String'));
Multi_Inputs(32) = str2double(get(handles.MI32EText,'String'));
Multi_Inputs(33) = str2double(get(handles.MI33EText,'String'));
Multi_Inputs(34) = str2double(get(handles.MI34EText,'String'));
Multi_Inputs(35) = str2double(get(handles.MI35EText,'String'));
Multi_Inputs(36) = str2double(get(handles.MI36EText,'String'));
Multi_Inputs(37) = str2double(get(handles.MI37EText,'String'));
Multi_Inputs(38) = str2double(get(handles.MI38EText,'String'));
Multi_Inputs(39) = str2double(get(handles.MI39EText,'String'));
Multi_Inputs(40) = str2double(get(handles.MI40EText,'String'));
Multi_Inputs(41) = str2double(get(handles.MI41EText,'String'));
Multi_Inputs(42) = str2double(get(handles.MI42EText,'String'));
Multi_Inputs(43) = str2double(get(handles.MI43EText,'String'));
Multi_Inputs(44) = str2double(get(handles.MI44EText,'String'));
Multi_Inputs(45) = str2double(get(handles.MI45EText,'String'));
Multi_Inputs(46) = str2double(get(handles.MI46EText,'String'));
Multi_Inputs(47) = str2double(get(handles.MI47EText,'String'));
Multi_Inputs(48) = str2double(get(handles.MI48EText,'String'));
Multi_Main(Multi_Inputs);


%% %%%%%%%%%%%%%%%%%%%%% Single Filament %%%%%%%%%%%%%%%%%%%%%
% --------------------------------------------------------------------

% --- Executes on button press in SingleButton.
function SingleButton_Callback(hObject, eventdata, handles)
% hObject    handle to SingleButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Set_Visiblety(handles,'off','on','off');


% --- Executes when selected object is changed in SingleUIPanel.
function SingleUIPanel_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in SingleUIPanel
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
A = ['5.76e-4    ';'2.4        ';'5.405405e-6';'0.022      ';...
    '0.13       ';'0.35       ';'230        ';'1.22e8     ';...
    '1.22e8     ';'1.3e9      ';'25.8e3     ';'25.8e3     ';...
    '30e3       ';'0.0012     ';'1.98       ';'20         ';...
    '0          ';'7200       '];
switch hObject
    %     case handles.SingleCase1
    %         i = 1;
    case handles.SingleCase2
        A(7,:) = '245        ';
    case handles.SingleCase3
        A(7,:) = '260        ';
    case handles.SingleNewCase
        for i = 1 : 18
            A(i,:) = '           ';
        end
end
set(handles.SI1EText,'String',A(1,:));set(handles.SI2EText,'String',A(2,:));
set(handles.SI3EText,'String',A(3,:));set(handles.SI4EText,'String',A(4,:));
set(handles.SI5EText,'String',A(5,:));set(handles.SI6EText,'String',A(6,:));
set(handles.SI7EText,'String',A(7,:));set(handles.SI8EText,'String',A(8,:));
set(handles.SI9EText,'String',A(9,:));set(handles.SI10EText,'String',A(10,:));
set(handles.SI11EText,'String',A(11,:));set(handles.SI12EText,'String',A(12,:));
set(handles.SI13EText,'String',A(13,:));set(handles.SI14EText,'String',A(14,:));
set(handles.SI15EText,'String',A(15,:));set(handles.SI16EText,'String',A(16,:));
set(handles.SI17EText,'String',A(17,:));set(handles.SI18EText,'String',A(18,:));


% --- Executes on button press in SingleRunButton.
function SingleRunButton_Callback(hObject, eventdata, handles)
% hObject    handle to SingleRunButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Single_Inputs(1) = str2double(get(handles.SI1EText,'String'));
Single_Inputs(2) = str2double(get(handles.SI2EText,'String'));
Single_Inputs(3) = str2double(get(handles.SI3EText,'String'));
Single_Inputs(4) = str2double(get(handles.SI4EText,'String'));
Single_Inputs(5) = str2double(get(handles.SI5EText,'String'));
Single_Inputs(6) = str2double(get(handles.SI6EText,'String'));
Single_Inputs(7) = str2double(get(handles.SI7EText,'String'));
Single_Inputs(8) = str2double(get(handles.SI8EText,'String'));
Single_Inputs(9) = str2double(get(handles.SI9EText,'String'));
Single_Inputs(10) = str2double(get(handles.SI10EText,'String'));
Single_Inputs(11) = str2double(get(handles.SI11EText,'String'));
Single_Inputs(12) = str2double(get(handles.SI12EText,'String'));
Single_Inputs(13) = str2double(get(handles.SI13EText,'String'));
Single_Inputs(14) = str2double(get(handles.SI14EText,'String'));
Single_Inputs(15) = str2double(get(handles.SI15EText,'String'));
Single_Inputs(16) = str2double(get(handles.SI16EText,'String'));
Single_Inputs(17) = str2double(get(handles.SI17EText,'String'));
Single_Inputs(18) = str2double(get(handles.SI18EText,'String'));
Single_Main(Single_Inputs);

%% %%%%%%%%%%%%%%%%%%%%% About %%%%%%%%%%%%%%%%%%%%%
% --- Executes on button press in AboutButton.
function AboutButton_Callback(hObject, eventdata, handles)
% hObject    handle to AboutButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Set_Visiblety(handles,'off','off','on');


%% %%%%%%%%%%%%%%%%%%%%% Swich Visibilety %%%%%%%%%%%%%%%%%%%%%
function Set_Visiblety(handles,c1,c2,c3)
% Sets all visibleties off and desired visibleies on
set(handles.MultiUIPanel,'Visible',c1);
set(handles.MultiRunButton,'Visible',c1);
set(handles.MI01SText,'Visible',c1);set(handles.MI02SText,'Visible',c1);
set(handles.MI03SText,'Visible',c1);set(handles.MI04SText,'Visible',c1);
set(handles.MI05SText,'Visible',c1);set(handles.MI06SText,'Visible',c1);
set(handles.MI1SText,'Visible',c1);set(handles.MI1EText,'Visible',c1);
set(handles.MI2SText,'Visible',c1);set(handles.MI2EText,'Visible',c1);
set(handles.MI3SText,'Visible',c1);set(handles.MI3EText,'Visible',c1);
set(handles.MI4SText,'Visible',c1);set(handles.MI4EText,'Visible',c1);
set(handles.MI5SText,'Visible',c1);set(handles.MI5EText,'Visible',c1);
set(handles.MI6SText,'Visible',c1);set(handles.MI6EText,'Visible',c1);
set(handles.MI7SText,'Visible',c1);set(handles.MI7EText,'Visible',c1);
set(handles.MI8SText,'Visible',c1);set(handles.MI8EText,'Visible',c1);
set(handles.MI9SText,'Visible',c1);set(handles.MI9EText,'Visible',c1);
set(handles.MI10SText,'Visible',c1);set(handles.MI10EText,'Visible',c1);
set(handles.MI11SText,'Visible',c1);set(handles.MI11EText,'Visible',c1);
set(handles.MI12SText,'Visible',c1);set(handles.MI12EText,'Visible',c1);
set(handles.MI13SText,'Visible',c1);set(handles.MI13EText,'Visible',c1);
set(handles.MI14SText,'Visible',c1);set(handles.MI14EText,'Visible',c1);
set(handles.MI15SText,'Visible',c1);set(handles.MI15EText,'Visible',c1);
set(handles.MI16SText,'Visible',c1);set(handles.MI16EText,'Visible',c1);
set(handles.MI17SText,'Visible',c1);set(handles.MI17EText,'Visible',c1);
set(handles.MI18SText,'Visible',c1);set(handles.MI18EText,'Visible',c1);
set(handles.MI19SText,'Visible',c1);set(handles.MI19EText,'Visible',c1);
set(handles.MI20SText,'Visible',c1);set(handles.MI20EText,'Visible',c1);
set(handles.MI21SText,'Visible',c1);set(handles.MI21EText,'Visible',c1);
set(handles.MI22SText,'Visible',c1);set(handles.MI22EText,'Visible',c1);
set(handles.MI23SText,'Visible',c1);set(handles.MI23EText,'Visible',c1);
set(handles.MI24SText,'Visible',c1);set(handles.MI24EText,'Visible',c1);
set(handles.MI25SText,'Visible',c1);set(handles.MI25EText,'Visible',c1);
set(handles.MI26SText,'Visible',c1);set(handles.MI26EText,'Visible',c1);
set(handles.MI27SText,'Visible',c1);set(handles.MI27EText,'Visible',c1);
set(handles.MI28SText,'Visible',c1);set(handles.MI28EText,'Visible',c1);
set(handles.MI29SText,'Visible',c1);set(handles.MI29EText,'Visible',c1);
set(handles.MI30SText,'Visible',c1);set(handles.MI30EText,'Visible',c1);
set(handles.MI31SText,'Visible',c1);set(handles.MI31EText,'Visible',c1);
set(handles.MI32SText,'Visible',c1);set(handles.MI32EText,'Visible',c1);
set(handles.MI33SText,'Visible',c1);set(handles.MI33EText,'Visible',c1);
set(handles.MI34SText,'Visible',c1);set(handles.MI34EText,'Visible',c1);
set(handles.MI35SText,'Visible',c1);set(handles.MI35EText,'Visible',c1);
set(handles.MI36SText,'Visible',c1);set(handles.MI36EText,'Visible',c1);
set(handles.MI37SText,'Visible',c1);set(handles.MI37EText,'Visible',c1);
set(handles.MI38SText,'Visible',c1);set(handles.MI38EText,'Visible',c1);
set(handles.MI39SText,'Visible',c1);set(handles.MI39EText,'Visible',c1);
set(handles.MI40SText,'Visible',c1);set(handles.MI40EText,'Visible',c1);
set(handles.MI41SText,'Visible',c1);set(handles.MI41EText,'Visible',c1);
set(handles.MI42SText,'Visible',c1);set(handles.MI42EText,'Visible',c1);
set(handles.MI43SText,'Visible',c1);set(handles.MI43EText,'Visible',c1);
set(handles.MI44SText,'Visible',c1);set(handles.MI44EText,'Visible',c1);
set(handles.MI45SText,'Visible',c1);set(handles.MI45EText,'Visible',c1);
set(handles.MI46SText,'Visible',c1);set(handles.MI46EText,'Visible',c1);
set(handles.MI47SText,'Visible',c1);set(handles.MI47EText,'Visible',c1);
set(handles.MI48SText,'Visible',c1);set(handles.MI48EText,'Visible',c1);

set(handles.SingleUIPanel,'Visible',c2);
set(handles.SingleRunButton,'Visible',c2);
set(handles.SI01SText,'Visible',c2);set(handles.SI02SText,'Visible',c2);
set(handles.SI03SText,'Visible',c2);set(handles.SI04SText,'Visible',c2);
set(handles.SI1SText,'Visible',c2);set(handles.SI1EText,'Visible',c2);
set(handles.SI2SText,'Visible',c2);set(handles.SI2EText,'Visible',c2);
set(handles.SI3SText,'Visible',c2);set(handles.SI3EText,'Visible',c2);
set(handles.SI4SText,'Visible',c2);set(handles.SI4EText,'Visible',c2);
set(handles.SI5SText,'Visible',c2);set(handles.SI5EText,'Visible',c2);
set(handles.SI6SText,'Visible',c2);set(handles.SI6EText,'Visible',c2);
set(handles.SI7SText,'Visible',c2);set(handles.SI7EText,'Visible',c2);
set(handles.SI8SText,'Visible',c2);set(handles.SI8EText,'Visible',c2);
set(handles.SI9SText,'Visible',c2);set(handles.SI9EText,'Visible',c2);
set(handles.SI10SText,'Visible',c2);set(handles.SI10EText,'Visible',c2);
set(handles.SI11SText,'Visible',c2);set(handles.SI11EText,'Visible',c2);
set(handles.SI12SText,'Visible',c2);set(handles.SI12EText,'Visible',c2);
set(handles.SI13SText,'Visible',c2);set(handles.SI13EText,'Visible',c2);
set(handles.SI14SText,'Visible',c2);set(handles.SI14EText,'Visible',c2);
set(handles.SI15SText,'Visible',c2);set(handles.SI15EText,'Visible',c2);
set(handles.SI16SText,'Visible',c2);set(handles.SI16EText,'Visible',c2);
set(handles.SI17SText,'Visible',c2);set(handles.SI17EText,'Visible',c2);
set(handles.SI18SText,'Visible',c2);set(handles.SI18EText,'Visible',c2);

set(handles.AboutText,'Visible',c3);


%% %%%%%%%%%%%%%%%%%%%%% Reaction %%%%%%%%%%%%%%%%%%%%%
% --- Executes on button press in RactionButton.
function RactionButton_Callback(hObject, eventdata, handles)
% hObject    handle to RactionButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


function multi_Callback(hObject, eventdata, handles)
% hObject    handle to multi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in MultiCase1.
function MultiCase1_Callback(hObject, eventdata, handles)
% hObject    handle to MultiCase1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of MultiCase1

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over SingleCase2.
function MultiCase1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to SingleCase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function MultiCase2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to SingleCase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function MultiCase3_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to SingleCase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function MultiCase4_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to SingleCase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function MultiNewCase_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to SingleCase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on key press with focus on MultiCase1 and none of its controls.
function MultiCase1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to MultiCase1 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in MultiCase2.
function MultiCase2_Callback(hObject, eventdata, handles)
% hObject    handle to MultiCase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of MultiCase2


% --- Executes on button press in MultiCase3.
function MultiCase3_Callback(hObject, eventdata, handles)
% hObject    handle to MultiCase3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of MultiCase3


% --- Executes on button press in MultiCase4.
function MultiCase4_Callback(hObject, eventdata, handles)
% hObject    handle to MultiCase4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of MultiCase4


% --- Executes on button press in MultiNewCase.
function MultiNewCase_Callback(hObject, eventdata, handles)
% hObject    handle to MultiNewCase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of MultiNewCase


% --- Executes during object creation, after setting all properties.
function MI1EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI1EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function MI1EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI1EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI1EText as text
%        str2double(get(hObject,'String')) returns contents of MI1EText as a double

% --- Executes during object creation, after setting all properties.
function MultiCase1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MultiCase1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function MI2EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI2EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI2EText as text
%        str2double(get(hObject,'String')) returns contents of MI2EText as a double


% --- Executes during object creation, after setting all properties.
function MI2EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI2EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI3EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI3EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI3EText as text
%        str2double(get(hObject,'String')) returns contents of MI3EText as a double


% --- Executes during object creation, after setting all properties.
function MI3EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI3EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI4EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI4EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI4EText as text
%        str2double(get(hObject,'String')) returns contents of MI4EText as a double


% --- Executes during object creation, after setting all properties.
function MI4EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI4EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI5EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI5EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI5EText as text
%        str2double(get(hObject,'String')) returns contents of MI5EText as a double


% --- Executes during object creation, after setting all properties.
function MI5EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI5EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI6EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI6EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI6EText as text
%        str2double(get(hObject,'String')) returns contents of MI6EText as a double


% --- Executes during object creation, after setting all properties.
function MI6EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI6EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI7EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI7EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI7EText as text
%        str2double(get(hObject,'String')) returns contents of MI7EText as a double


% --- Executes during object creation, after setting all properties.
function MI7EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI7EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI8EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI8EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI8EText as text
%        str2double(get(hObject,'String')) returns contents of MI8EText as a double


% --- Executes during object creation, after setting all properties.
function MI8EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI8EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI9EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI9EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI9EText as text
%        str2double(get(hObject,'String')) returns contents of MI9EText as a double


% --- Executes during object creation, after setting all properties.
function MI9EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI9EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI10EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI10EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI10EText as text
%        str2double(get(hObject,'String')) returns contents of MI10EText as a double


% --- Executes during object creation, after setting all properties.
function MI10EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI10EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI11EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI11EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI11EText as text
%        str2double(get(hObject,'String')) returns contents of MI11EText as a double


% --- Executes during object creation, after setting all properties.
function MI11EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI11EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI12EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI12EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI12EText as text
%        str2double(get(hObject,'String')) returns contents of MI12EText as a double


% --- Executes during object creation, after setting all properties.
function MI12EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI12EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI13EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI13EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI13EText as text
%        str2double(get(hObject,'String')) returns contents of MI13EText as a double


% --- Executes during object creation, after setting all properties.
function MI13EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI13EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI14EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI14EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI14EText as text
%        str2double(get(hObject,'String')) returns contents of MI14EText as a double


% --- Executes during object creation, after setting all properties.
function MI14EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI14EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI15EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI15EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI15EText as text
%        str2double(get(hObject,'String')) returns contents of MI15EText as a double


% --- Executes during object creation, after setting all properties.
function MI15EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI15EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI16EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI16EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI16EText as text
%        str2double(get(hObject,'String')) returns contents of MI16EText as a double


% --- Executes during object creation, after setting all properties.
function MI16EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI16EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI17EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI17EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI17EText as text
%        str2double(get(hObject,'String')) returns contents of MI17EText as a double


% --- Executes during object creation, after setting all properties.
function MI17EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI17EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI18EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI18EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI18EText as text
%        str2double(get(hObject,'String')) returns contents of MI18EText as a double


% --- Executes during object creation, after setting all properties.
function MI18EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI18EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI20EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI20EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI20EText as text
%        str2double(get(hObject,'String')) returns contents of MI20EText as a double


% --- Executes during object creation, after setting all properties.
function MI20EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI20EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI21EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI21EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI21EText as text
%        str2double(get(hObject,'String')) returns contents of MI21EText as a double


% --- Executes during object creation, after setting all properties.
function MI21EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI21EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI22EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI22EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI22EText as text
%        str2double(get(hObject,'String')) returns contents of MI22EText as a double


% --- Executes during object creation, after setting all properties.
function MI22EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI22EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI23EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI23EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI23EText as text
%        str2double(get(hObject,'String')) returns contents of MI23EText as a double


% --- Executes during object creation, after setting all properties.
function MI23EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI23EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI24EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI24EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI24EText as text
%        str2double(get(hObject,'String')) returns contents of MI24EText as a double


% --- Executes during object creation, after setting all properties.
function MI24EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI24EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI25EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI25EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI25EText as text
%        str2double(get(hObject,'String')) returns contents of MI25EText as a double


% --- Executes during object creation, after setting all properties.
function MI25EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI25EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI27EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI27EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI27EText as text
%        str2double(get(hObject,'String')) returns contents of MI27EText as a double


% --- Executes during object creation, after setting all properties.
function MI27EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI27EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI29EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI29EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI29EText as text
%        str2double(get(hObject,'String')) returns contents of MI29EText as a double


% --- Executes during object creation, after setting all properties.
function MI29EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI29EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI31EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI31EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI31EText as text
%        str2double(get(hObject,'String')) returns contents of MI31EText as a double


% --- Executes during object creation, after setting all properties.
function MI31EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI31EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI33EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI33EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI33EText as text
%        str2double(get(hObject,'String')) returns contents of MI33EText as a double


% --- Executes during object creation, after setting all properties.
function MI33EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI33EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI35EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI35EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI35EText as text
%        str2double(get(hObject,'String')) returns contents of MI35EText as a double


% --- Executes during object creation, after setting all properties.
function MI35EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI35EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI37EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI37EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI37EText as text
%        str2double(get(hObject,'String')) returns contents of MI37EText as a double


% --- Executes during object creation, after setting all properties.
function MI37EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI37EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI39EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI39EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI39EText as text
%        str2double(get(hObject,'String')) returns contents of MI39EText as a double


% --- Executes during object creation, after setting all properties.
function MI39EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI39EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI41EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI41EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI41EText as text
%        str2double(get(hObject,'String')) returns contents of MI41EText as a double


% --- Executes during object creation, after setting all properties.
function MI41EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI41EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI43EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI43EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI43EText as text
%        str2double(get(hObject,'String')) returns contents of MI43EText as a double


% --- Executes during object creation, after setting all properties.
function MI43EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI43EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI19EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI19EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI19EText as text
%        str2double(get(hObject,'String')) returns contents of MI19EText as a double


% --- Executes during object creation, after setting all properties.
function MI19EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI19EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI45EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI45EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI45EText as text
%        str2double(get(hObject,'String')) returns contents of MI45EText as a double


% --- Executes during object creation, after setting all properties.
function MI45EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI45EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI26EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI26EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI26EText as text
%        str2double(get(hObject,'String')) returns contents of MI26EText as a double


% --- Executes during object creation, after setting all properties.
function MI26EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI26EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI28EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI28EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI28EText as text
%        str2double(get(hObject,'String')) returns contents of MI28EText as a double


% --- Executes during object creation, after setting all properties.
function MI28EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI28EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI30EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI30EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI30EText as text
%        str2double(get(hObject,'String')) returns contents of MI30EText as a double


% --- Executes during object creation, after setting all properties.
function MI30EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI30EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI32EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI32EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI32EText as text
%        str2double(get(hObject,'String')) returns contents of MI32EText as a double


% --- Executes during object creation, after setting all properties.
function MI32EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI32EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI34EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI34EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI34EText as text
%        str2double(get(hObject,'String')) returns contents of MI34EText as a double


% --- Executes during object creation, after setting all properties.
function MI34EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI34EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI36EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI36EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI36EText as text
%        str2double(get(hObject,'String')) returns contents of MI36EText as a double


% --- Executes during object creation, after setting all properties.
function MI36EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI36EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI38EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI38EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI38EText as text
%        str2double(get(hObject,'String')) returns contents of MI38EText as a double


% --- Executes during object creation, after setting all properties.
function MI38EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI38EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI40EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI40EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI40EText as text
%        str2double(get(hObject,'String')) returns contents of MI40EText as a double


% --- Executes during object creation, after setting all properties.
function MI40EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI40EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI42EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI42EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI42EText as text
%        str2double(get(hObject,'String')) returns contents of MI42EText as a double


% --- Executes during object creation, after setting all properties.
function MI42EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI42EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI44EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI44EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI44EText as text
%        str2double(get(hObject,'String')) returns contents of MI44EText as a double


% --- Executes during object creation, after setting all properties.
function MI44EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI44EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function single_Callback(hObject, eventdata, handles)
% hObject    handle to single (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function MI47EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI47EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI47EText as text
%        str2double(get(hObject,'String')) returns contents of MI47EText as a double


% --- Executes during object creation, after setting all properties.
function MI47EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI47EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI46EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI46EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI46EText as text
%        str2double(get(hObject,'String')) returns contents of MI46EText as a double


% --- Executes during object creation, after setting all properties.
function MI46EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI46EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI48EText_Callback(hObject, eventdata, handles)
% hObject    handle to MI48EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI48EText as text
%        str2double(get(hObject,'String')) returns contents of MI48EText as a double


% --- Executes during object creation, after setting all properties.
function MI48EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI48EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% 
% 
% function edit86_Callback(hObject, eventdata, handles)
% % hObject    handle to edit86 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit86 as text
% %        str2double(get(hObject,'String')) returns contents of edit86 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit86_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit86 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit87_Callback(hObject, eventdata, handles)
% % hObject    handle to edit87 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit87 as text
% %        str2double(get(hObject,'String')) returns contents of edit87 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit87_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit87 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit88_Callback(hObject, eventdata, handles)
% % hObject    handle to edit88 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit88 as text
% %        str2double(get(hObject,'String')) returns contents of edit88 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit88_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit88 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit89_Callback(hObject, eventdata, handles)
% % hObject    handle to edit89 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit89 as text
% %        str2double(get(hObject,'String')) returns contents of edit89 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit89_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit89 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit90_Callback(hObject, eventdata, handles)
% % hObject    handle to edit90 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit90 as text
% %        str2double(get(hObject,'String')) returns contents of edit90 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit90_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit90 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit91_Callback(hObject, eventdata, handles)
% % hObject    handle to edit91 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit91 as text
% %        str2double(get(hObject,'String')) returns contents of edit91 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit91_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit91 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit92_Callback(hObject, eventdata, handles)
% % hObject    handle to edit92 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit92 as text
% %        str2double(get(hObject,'String')) returns contents of edit92 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit92_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit92 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit93_Callback(hObject, eventdata, handles)
% % hObject    handle to edit93 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit93 as text
% %        str2double(get(hObject,'String')) returns contents of edit93 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit93_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit93 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit94_Callback(hObject, eventdata, handles)
% % hObject    handle to edit94 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit94 as text
% %        str2double(get(hObject,'String')) returns contents of edit94 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit94_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit94 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit95_Callback(hObject, eventdata, handles)
% % hObject    handle to edit95 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit95 as text
% %        str2double(get(hObject,'String')) returns contents of edit95 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit95_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit95 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit96_Callback(hObject, eventdata, handles)
% % hObject    handle to edit96 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit96 as text
% %        str2double(get(hObject,'String')) returns contents of edit96 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit96_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit96 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit97_Callback(hObject, eventdata, handles)
% % hObject    handle to edit97 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit97 as text
% %        str2double(get(hObject,'String')) returns contents of edit97 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit97_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit97 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit98_Callback(hObject, eventdata, handles)
% % hObject    handle to edit98 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit98 as text
% %        str2double(get(hObject,'String')) returns contents of edit98 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit98_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit98 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit99_Callback(hObject, eventdata, handles)
% % hObject    handle to edit99 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit99 as text
% %        str2double(get(hObject,'String')) returns contents of edit99 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit99_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit99 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit100_Callback(hObject, eventdata, handles)
% % hObject    handle to edit100 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit100 as text
% %        str2double(get(hObject,'String')) returns contents of edit100 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit100_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit100 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit101_Callback(hObject, eventdata, handles)
% % hObject    handle to edit101 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit101 as text
% %        str2double(get(hObject,'String')) returns contents of edit101 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit101_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit101 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit102_Callback(hObject, eventdata, handles)
% % hObject    handle to edit102 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit102 as text
% %        str2double(get(hObject,'String')) returns contents of edit102 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit102_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit102 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
% function edit103_Callback(hObject, eventdata, handles)
% % hObject    handle to edit103 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit103 as text
% %        str2double(get(hObject,'String')) returns contents of edit103 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit103_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit103 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end


function SingleCase1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to SingleCase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function SingleCase2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to SingleCase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function SingleCase3_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to SingleCase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function SingleNewCase_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to SingleCase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function SI1EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI1EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI1EText as text
%        str2double(get(hObject,'String')) returns contents of SI1EText as a double


% --- Executes during object creation, after setting all properties.
function SI1EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI1EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI2EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI2EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI2EText as text
%        str2double(get(hObject,'String')) returns contents of SI2EText as a double


% --- Executes during object creation, after setting all properties.
function SI2EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI2EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI3EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI3EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI3EText as text
%        str2double(get(hObject,'String')) returns contents of SI3EText as a double


% --- Executes during object creation, after setting all properties.
function SI3EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI3EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI4EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI4EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI4EText as text
%        str2double(get(hObject,'String')) returns contents of SI4EText as a double


% --- Executes during object creation, after setting all properties.
function SI4EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI4EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI5EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI5EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI5EText as text
%        str2double(get(hObject,'String')) returns contents of SI5EText as a double


% --- Executes during object creation, after setting all properties.
function SI5EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI5EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI6EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI6EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI6EText as text
%        str2double(get(hObject,'String')) returns contents of SI6EText as a double


% --- Executes during object creation, after setting all properties.
function SI6EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI6EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI8EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI8EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI8EText as text
%        str2double(get(hObject,'String')) returns contents of SI8EText as a double


% --- Executes during object creation, after setting all properties.
function SI8EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI8EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI9EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI9EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI9EText as text
%        str2double(get(hObject,'String')) returns contents of SI9EText as a double


% --- Executes during object creation, after setting all properties.
function SI9EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI9EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI10EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI10EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI10EText as text
%        str2double(get(hObject,'String')) returns contents of SI10EText as a double


% --- Executes during object creation, after setting all properties.
function SI10EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI10EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI11EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI11EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI11EText as text
%        str2double(get(hObject,'String')) returns contents of SI11EText as a double


% --- Executes during object creation, after setting all properties.
function SI11EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI11EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI13EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI13EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI13EText as text
%        str2double(get(hObject,'String')) returns contents of SI13EText as a double


% --- Executes during object creation, after setting all properties.
function SI13EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI13EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI14EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI14EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI14EText as text
%        str2double(get(hObject,'String')) returns contents of SI14EText as a double


% --- Executes during object creation, after setting all properties.
function SI14EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI14EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI15EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI15EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI15EText as text
%        str2double(get(hObject,'String')) returns contents of SI15EText as a double


% --- Executes during object creation, after setting all properties.
function SI15EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI15EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI12EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI12EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI12EText as text
%        str2double(get(hObject,'String')) returns contents of SI12EText as a double


% --- Executes during object creation, after setting all properties.
function SI12EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI12EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI17EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI17EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI17EText as text
%        str2double(get(hObject,'String')) returns contents of SI17EText as a double


% --- Executes during object creation, after setting all properties.
function SI17EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI17EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI16EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI16EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI16EText as text
%        str2double(get(hObject,'String')) returns contents of SI16EText as a double


% --- Executes during object creation, after setting all properties.
function SI16EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI16EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI18EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI18EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI18EText as text
%        str2double(get(hObject,'String')) returns contents of SI18EText as a double


% --- Executes during object creation, after setting all properties.
function SI18EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI18EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SI7EText_Callback(hObject, eventdata, handles)
% hObject    handle to SI7EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SI7EText as text
%        str2double(get(hObject,'String')) returns contents of SI7EText as a double


% --- Executes during object creation, after setting all properties.
function SI7EText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SI7EText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
