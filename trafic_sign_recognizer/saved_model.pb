╓╧
ш╛
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
╛
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.02v2.6.0-0-g919f693420e8Цб
~
Conv01/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameConv01/kernel
w
!Conv01/kernel/Read/ReadVariableOpReadVariableOpConv01/kernel*&
_output_shapes
:@*
dtype0
n
Conv01/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameConv01/bias
g
Conv01/bias/Read/ReadVariableOpReadVariableOpConv01/bias*
_output_shapes
:@*
dtype0
~
Conv02/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameConv02/kernel
w
!Conv02/kernel/Read/ReadVariableOpReadVariableOpConv02/kernel*&
_output_shapes
:@@*
dtype0
n
Conv02/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameConv02/bias
g
Conv02/bias/Read/ReadVariableOpReadVariableOpConv02/bias*
_output_shapes
:@*
dtype0

Conv11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*
shared_nameConv11/kernel
x
!Conv11/kernel/Read/ReadVariableOpReadVariableOpConv11/kernel*'
_output_shapes
:@А*
dtype0
o
Conv11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameConv11/bias
h
Conv11/bias/Read/ReadVariableOpReadVariableOpConv11/bias*
_output_shapes	
:А*
dtype0
А
Conv12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*
shared_nameConv12/kernel
y
!Conv12/kernel/Read/ReadVariableOpReadVariableOpConv12/kernel*(
_output_shapes
:АА*
dtype0
o
Conv12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameConv12/bias
h
Conv12/bias/Read/ReadVariableOpReadVariableOpConv12/bias*
_output_shapes	
:А*
dtype0
А
Conv21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*
shared_nameConv21/kernel
y
!Conv21/kernel/Read/ReadVariableOpReadVariableOpConv21/kernel*(
_output_shapes
:АА*
dtype0
o
Conv21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameConv21/bias
h
Conv21/bias/Read/ReadVariableOpReadVariableOpConv21/bias*
_output_shapes	
:А*
dtype0
А
Conv22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*
shared_nameConv22/kernel
y
!Conv22/kernel/Read/ReadVariableOpReadVariableOpConv22/kernel*(
_output_shapes
:АА*
dtype0
o
Conv22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameConv22/bias
h
Conv22/bias/Read/ReadVariableOpReadVariableOpConv22/bias*
_output_shapes	
:А*
dtype0
x
Dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_nameDense1/kernel
q
!Dense1/kernel/Read/ReadVariableOpReadVariableOpDense1/kernel* 
_output_shapes
:
АА*
dtype0
o
Dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameDense1/bias
h
Dense1/bias/Read/ReadVariableOpReadVariableOpDense1/bias*
_output_shapes	
:А*
dtype0
w
Output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А+*
shared_nameOutput/kernel
p
!Output/kernel/Read/ReadVariableOpReadVariableOpOutput/kernel*
_output_shapes
:	А+*
dtype0
n
Output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:+*
shared_nameOutput/bias
g
Output/bias/Read/ReadVariableOpReadVariableOpOutput/bias*
_output_shapes
:+*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
М
Adam/Conv01/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/Conv01/kernel/m
Е
(Adam/Conv01/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv01/kernel/m*&
_output_shapes
:@*
dtype0
|
Adam/Conv01/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/Conv01/bias/m
u
&Adam/Conv01/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv01/bias/m*
_output_shapes
:@*
dtype0
М
Adam/Conv02/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*%
shared_nameAdam/Conv02/kernel/m
Е
(Adam/Conv02/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv02/kernel/m*&
_output_shapes
:@@*
dtype0
|
Adam/Conv02/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/Conv02/bias/m
u
&Adam/Conv02/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv02/bias/m*
_output_shapes
:@*
dtype0
Н
Adam/Conv11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*%
shared_nameAdam/Conv11/kernel/m
Ж
(Adam/Conv11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv11/kernel/m*'
_output_shapes
:@А*
dtype0
}
Adam/Conv11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/Conv11/bias/m
v
&Adam/Conv11/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv11/bias/m*
_output_shapes	
:А*
dtype0
О
Adam/Conv12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*%
shared_nameAdam/Conv12/kernel/m
З
(Adam/Conv12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv12/kernel/m*(
_output_shapes
:АА*
dtype0
}
Adam/Conv12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/Conv12/bias/m
v
&Adam/Conv12/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv12/bias/m*
_output_shapes	
:А*
dtype0
О
Adam/Conv21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*%
shared_nameAdam/Conv21/kernel/m
З
(Adam/Conv21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv21/kernel/m*(
_output_shapes
:АА*
dtype0
}
Adam/Conv21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/Conv21/bias/m
v
&Adam/Conv21/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv21/bias/m*
_output_shapes	
:А*
dtype0
О
Adam/Conv22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*%
shared_nameAdam/Conv22/kernel/m
З
(Adam/Conv22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv22/kernel/m*(
_output_shapes
:АА*
dtype0
}
Adam/Conv22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/Conv22/bias/m
v
&Adam/Conv22/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv22/bias/m*
_output_shapes	
:А*
dtype0
Ж
Adam/Dense1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*%
shared_nameAdam/Dense1/kernel/m

(Adam/Dense1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense1/kernel/m* 
_output_shapes
:
АА*
dtype0
}
Adam/Dense1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/Dense1/bias/m
v
&Adam/Dense1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense1/bias/m*
_output_shapes	
:А*
dtype0
Е
Adam/Output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А+*%
shared_nameAdam/Output/kernel/m
~
(Adam/Output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Output/kernel/m*
_output_shapes
:	А+*
dtype0
|
Adam/Output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:+*#
shared_nameAdam/Output/bias/m
u
&Adam/Output/bias/m/Read/ReadVariableOpReadVariableOpAdam/Output/bias/m*
_output_shapes
:+*
dtype0
М
Adam/Conv01/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/Conv01/kernel/v
Е
(Adam/Conv01/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv01/kernel/v*&
_output_shapes
:@*
dtype0
|
Adam/Conv01/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/Conv01/bias/v
u
&Adam/Conv01/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv01/bias/v*
_output_shapes
:@*
dtype0
М
Adam/Conv02/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*%
shared_nameAdam/Conv02/kernel/v
Е
(Adam/Conv02/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv02/kernel/v*&
_output_shapes
:@@*
dtype0
|
Adam/Conv02/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/Conv02/bias/v
u
&Adam/Conv02/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv02/bias/v*
_output_shapes
:@*
dtype0
Н
Adam/Conv11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*%
shared_nameAdam/Conv11/kernel/v
Ж
(Adam/Conv11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv11/kernel/v*'
_output_shapes
:@А*
dtype0
}
Adam/Conv11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/Conv11/bias/v
v
&Adam/Conv11/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv11/bias/v*
_output_shapes	
:А*
dtype0
О
Adam/Conv12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*%
shared_nameAdam/Conv12/kernel/v
З
(Adam/Conv12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv12/kernel/v*(
_output_shapes
:АА*
dtype0
}
Adam/Conv12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/Conv12/bias/v
v
&Adam/Conv12/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv12/bias/v*
_output_shapes	
:А*
dtype0
О
Adam/Conv21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*%
shared_nameAdam/Conv21/kernel/v
З
(Adam/Conv21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv21/kernel/v*(
_output_shapes
:АА*
dtype0
}
Adam/Conv21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/Conv21/bias/v
v
&Adam/Conv21/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv21/bias/v*
_output_shapes	
:А*
dtype0
О
Adam/Conv22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*%
shared_nameAdam/Conv22/kernel/v
З
(Adam/Conv22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv22/kernel/v*(
_output_shapes
:АА*
dtype0
}
Adam/Conv22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/Conv22/bias/v
v
&Adam/Conv22/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv22/bias/v*
_output_shapes	
:А*
dtype0
Ж
Adam/Dense1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*%
shared_nameAdam/Dense1/kernel/v

(Adam/Dense1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense1/kernel/v* 
_output_shapes
:
АА*
dtype0
}
Adam/Dense1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/Dense1/bias/v
v
&Adam/Dense1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense1/bias/v*
_output_shapes	
:А*
dtype0
Е
Adam/Output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А+*%
shared_nameAdam/Output/kernel/v
~
(Adam/Output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Output/kernel/v*
_output_shapes
:	А+*
dtype0
|
Adam/Output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:+*#
shared_nameAdam/Output/bias/v
u
&Adam/Output/bias/v/Read/ReadVariableOpReadVariableOpAdam/Output/bias/v*
_output_shapes
:+*
dtype0

NoOpNoOp
Ёc
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*лc
valueбcBЮc BЧc
Ч
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
R
#	variables
$regularization_losses
%trainable_variables
&	keras_api
R
'	variables
(regularization_losses
)trainable_variables
*	keras_api
h

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
h

1kernel
2bias
3	variables
4regularization_losses
5trainable_variables
6	keras_api
R
7	variables
8regularization_losses
9trainable_variables
:	keras_api
R
;	variables
<regularization_losses
=trainable_variables
>	keras_api
h

?kernel
@bias
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
h

Ekernel
Fbias
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
R
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
R
O	variables
Pregularization_losses
Qtrainable_variables
R	keras_api
R
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
h

Wkernel
Xbias
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
R
]	variables
^regularization_losses
_trainable_variables
`	keras_api
h

akernel
bbias
c	variables
dregularization_losses
etrainable_variables
f	keras_api
А
giter

hbeta_1

ibeta_2
	jdecay
klearning_ratem╠m═m╬m╧+m╨,m╤1m╥2m╙?m╘@m╒Em╓Fm╫Wm╪Xm┘am┌bm█v▄v▌v▐v▀+vр,vс1vт2vу?vф@vхEvцFvчWvшXvщavъbvы
v
0
1
2
3
+4
,5
16
27
?8
@9
E10
F11
W12
X13
a14
b15
 
v
0
1
2
3
+4
,5
16
27
?8
@9
E10
F11
W12
X13
a14
b15
н
	variables

llayers
mlayer_regularization_losses
nnon_trainable_variables
ometrics
regularization_losses
player_metrics
trainable_variables
 
YW
VARIABLE_VALUEConv01/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEConv01/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
н
	variables

qlayers
rlayer_regularization_losses
snon_trainable_variables
tmetrics
regularization_losses
ulayer_metrics
trainable_variables
YW
VARIABLE_VALUEConv02/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEConv02/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
н
	variables

vlayers
wlayer_regularization_losses
xnon_trainable_variables
ymetrics
 regularization_losses
zlayer_metrics
!trainable_variables
 
 
 
н
#	variables

{layers
|layer_regularization_losses
}non_trainable_variables
~metrics
$regularization_losses
layer_metrics
%trainable_variables
 
 
 
▓
'	variables
Аlayers
 Бlayer_regularization_losses
Вnon_trainable_variables
Гmetrics
(regularization_losses
Дlayer_metrics
)trainable_variables
YW
VARIABLE_VALUEConv11/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEConv11/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
▓
-	variables
Еlayers
 Жlayer_regularization_losses
Зnon_trainable_variables
Иmetrics
.regularization_losses
Йlayer_metrics
/trainable_variables
YW
VARIABLE_VALUEConv12/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEConv12/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21
 

10
21
▓
3	variables
Кlayers
 Лlayer_regularization_losses
Мnon_trainable_variables
Нmetrics
4regularization_losses
Оlayer_metrics
5trainable_variables
 
 
 
▓
7	variables
Пlayers
 Рlayer_regularization_losses
Сnon_trainable_variables
Тmetrics
8regularization_losses
Уlayer_metrics
9trainable_variables
 
 
 
▓
;	variables
Фlayers
 Хlayer_regularization_losses
Цnon_trainable_variables
Чmetrics
<regularization_losses
Шlayer_metrics
=trainable_variables
YW
VARIABLE_VALUEConv21/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEConv21/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1
 

?0
@1
▓
A	variables
Щlayers
 Ъlayer_regularization_losses
Ыnon_trainable_variables
Ьmetrics
Bregularization_losses
Эlayer_metrics
Ctrainable_variables
YW
VARIABLE_VALUEConv22/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEConv22/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

E0
F1
 

E0
F1
▓
G	variables
Юlayers
 Яlayer_regularization_losses
аnon_trainable_variables
бmetrics
Hregularization_losses
вlayer_metrics
Itrainable_variables
 
 
 
▓
K	variables
гlayers
 дlayer_regularization_losses
еnon_trainable_variables
жmetrics
Lregularization_losses
зlayer_metrics
Mtrainable_variables
 
 
 
▓
O	variables
иlayers
 йlayer_regularization_losses
кnon_trainable_variables
лmetrics
Pregularization_losses
мlayer_metrics
Qtrainable_variables
 
 
 
▓
S	variables
нlayers
 оlayer_regularization_losses
пnon_trainable_variables
░metrics
Tregularization_losses
▒layer_metrics
Utrainable_variables
YW
VARIABLE_VALUEDense1/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEDense1/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

W0
X1
 

W0
X1
▓
Y	variables
▓layers
 │layer_regularization_losses
┤non_trainable_variables
╡metrics
Zregularization_losses
╢layer_metrics
[trainable_variables
 
 
 
▓
]	variables
╖layers
 ╕layer_regularization_losses
╣non_trainable_variables
║metrics
^regularization_losses
╗layer_metrics
_trainable_variables
YW
VARIABLE_VALUEOutput/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEOutput/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

a0
b1
 

a0
b1
▓
c	variables
╝layers
 ╜layer_regularization_losses
╛non_trainable_variables
┐metrics
dregularization_losses
└layer_metrics
etrainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
v
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
 
 

┴0
┬1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

├total

─count
┼	variables
╞	keras_api
I

╟total

╚count
╔
_fn_kwargs
╩	variables
╦	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

├0
─1

┼	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

╟0
╚1

╩	variables
|z
VARIABLE_VALUEAdam/Conv01/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv01/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv02/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv02/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv11/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv11/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv12/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv12/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv21/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv21/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv22/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv22/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Dense1/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Dense1/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Output/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Output/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv01/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv01/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv02/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv02/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv11/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv11/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv12/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv12/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv21/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv21/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv22/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv22/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Dense1/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Dense1/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Output/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Output/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
П
serving_default_Conv01_inputPlaceholder*/
_output_shapes
:         *
dtype0*$
shape:         
╢
StatefulPartitionedCallStatefulPartitionedCallserving_default_Conv01_inputConv01/kernelConv01/biasConv02/kernelConv02/biasConv11/kernelConv11/biasConv12/kernelConv12/biasConv21/kernelConv21/biasConv22/kernelConv22/biasDense1/kernelDense1/biasOutput/kernelOutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         +*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_17167
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
м
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!Conv01/kernel/Read/ReadVariableOpConv01/bias/Read/ReadVariableOp!Conv02/kernel/Read/ReadVariableOpConv02/bias/Read/ReadVariableOp!Conv11/kernel/Read/ReadVariableOpConv11/bias/Read/ReadVariableOp!Conv12/kernel/Read/ReadVariableOpConv12/bias/Read/ReadVariableOp!Conv21/kernel/Read/ReadVariableOpConv21/bias/Read/ReadVariableOp!Conv22/kernel/Read/ReadVariableOpConv22/bias/Read/ReadVariableOp!Dense1/kernel/Read/ReadVariableOpDense1/bias/Read/ReadVariableOp!Output/kernel/Read/ReadVariableOpOutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/Conv01/kernel/m/Read/ReadVariableOp&Adam/Conv01/bias/m/Read/ReadVariableOp(Adam/Conv02/kernel/m/Read/ReadVariableOp&Adam/Conv02/bias/m/Read/ReadVariableOp(Adam/Conv11/kernel/m/Read/ReadVariableOp&Adam/Conv11/bias/m/Read/ReadVariableOp(Adam/Conv12/kernel/m/Read/ReadVariableOp&Adam/Conv12/bias/m/Read/ReadVariableOp(Adam/Conv21/kernel/m/Read/ReadVariableOp&Adam/Conv21/bias/m/Read/ReadVariableOp(Adam/Conv22/kernel/m/Read/ReadVariableOp&Adam/Conv22/bias/m/Read/ReadVariableOp(Adam/Dense1/kernel/m/Read/ReadVariableOp&Adam/Dense1/bias/m/Read/ReadVariableOp(Adam/Output/kernel/m/Read/ReadVariableOp&Adam/Output/bias/m/Read/ReadVariableOp(Adam/Conv01/kernel/v/Read/ReadVariableOp&Adam/Conv01/bias/v/Read/ReadVariableOp(Adam/Conv02/kernel/v/Read/ReadVariableOp&Adam/Conv02/bias/v/Read/ReadVariableOp(Adam/Conv11/kernel/v/Read/ReadVariableOp&Adam/Conv11/bias/v/Read/ReadVariableOp(Adam/Conv12/kernel/v/Read/ReadVariableOp&Adam/Conv12/bias/v/Read/ReadVariableOp(Adam/Conv21/kernel/v/Read/ReadVariableOp&Adam/Conv21/bias/v/Read/ReadVariableOp(Adam/Conv22/kernel/v/Read/ReadVariableOp&Adam/Conv22/bias/v/Read/ReadVariableOp(Adam/Dense1/kernel/v/Read/ReadVariableOp&Adam/Dense1/bias/v/Read/ReadVariableOp(Adam/Output/kernel/v/Read/ReadVariableOp&Adam/Output/bias/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__traced_save_17940
│

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameConv01/kernelConv01/biasConv02/kernelConv02/biasConv11/kernelConv11/biasConv12/kernelConv12/biasConv21/kernelConv21/biasConv22/kernelConv22/biasDense1/kernelDense1/biasOutput/kernelOutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/Conv01/kernel/mAdam/Conv01/bias/mAdam/Conv02/kernel/mAdam/Conv02/bias/mAdam/Conv11/kernel/mAdam/Conv11/bias/mAdam/Conv12/kernel/mAdam/Conv12/bias/mAdam/Conv21/kernel/mAdam/Conv21/bias/mAdam/Conv22/kernel/mAdam/Conv22/bias/mAdam/Dense1/kernel/mAdam/Dense1/bias/mAdam/Output/kernel/mAdam/Output/bias/mAdam/Conv01/kernel/vAdam/Conv01/bias/vAdam/Conv02/kernel/vAdam/Conv02/bias/vAdam/Conv11/kernel/vAdam/Conv11/bias/vAdam/Conv12/kernel/vAdam/Conv12/bias/vAdam/Conv21/kernel/vAdam/Conv21/bias/vAdam/Conv22/kernel/vAdam/Conv22/bias/vAdam/Dense1/kernel/vAdam/Dense1/bias/vAdam/Output/kernel/vAdam/Output/bias/v*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_restore_18121зм
┴
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17631

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
и
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_16372

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┴
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_16568

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ъ
a
B__inference_dropout_layer_call_and_return_conditional_losses_16827

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ъ
a
B__inference_dropout_layer_call_and_return_conditional_losses_17484

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
■
╘
#__inference_signature_wrapper_17167
conv01_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А+

unknown_14:+
identityИвStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallconv01_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         +*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_163632
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         +2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameConv01_input
Л
ї
A__inference_Dense1_layer_call_and_return_conditional_losses_17690

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╗
`
'__inference_dropout_layer_call_fn_17494

inputs
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_168272
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ы
Ю
&__inference_Conv22_layer_call_fn_17621

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv22_layer_call_and_return_conditional_losses_165582
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Х
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_16528

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
к
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_16394

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╪
C
'__inference_dropout_layer_call_fn_17489

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_164812
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ы
Ю
&__inference_Conv12_layer_call_fn_17534

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         		А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv12_layer_call_and_return_conditional_losses_165112
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         		А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
Ы
&__inference_Conv01_layer_call_fn_17427

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCall∙
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv01_layer_call_and_return_conditional_losses_164472
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╒
K
/__inference_max_pooling2d_2_layer_call_fn_17636

inputs
identityы
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_164162
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
и
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_17452

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
П
`
B__inference_dropout_layer_call_and_return_conditional_losses_17472

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
є
¤
A__inference_Conv21_layer_call_and_return_conditional_losses_16541

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
├Y
У
E__inference_sequential_layer_call_and_return_conditional_losses_17236

inputs?
%conv01_conv2d_readvariableop_resource:@4
&conv01_biasadd_readvariableop_resource:@?
%conv02_conv2d_readvariableop_resource:@@4
&conv02_biasadd_readvariableop_resource:@@
%conv11_conv2d_readvariableop_resource:@А5
&conv11_biasadd_readvariableop_resource:	АA
%conv12_conv2d_readvariableop_resource:АА5
&conv12_biasadd_readvariableop_resource:	АA
%conv21_conv2d_readvariableop_resource:АА5
&conv21_biasadd_readvariableop_resource:	АA
%conv22_conv2d_readvariableop_resource:АА5
&conv22_biasadd_readvariableop_resource:	А9
%dense1_matmul_readvariableop_resource:
АА5
&dense1_biasadd_readvariableop_resource:	А8
%output_matmul_readvariableop_resource:	А+4
&output_biasadd_readvariableop_resource:+
identityИвConv01/BiasAdd/ReadVariableOpвConv01/Conv2D/ReadVariableOpвConv02/BiasAdd/ReadVariableOpвConv02/Conv2D/ReadVariableOpвConv11/BiasAdd/ReadVariableOpвConv11/Conv2D/ReadVariableOpвConv12/BiasAdd/ReadVariableOpвConv12/Conv2D/ReadVariableOpвConv21/BiasAdd/ReadVariableOpвConv21/Conv2D/ReadVariableOpвConv22/BiasAdd/ReadVariableOpвConv22/Conv2D/ReadVariableOpвDense1/BiasAdd/ReadVariableOpвDense1/MatMul/ReadVariableOpвOutput/BiasAdd/ReadVariableOpвOutput/MatMul/ReadVariableOpк
Conv01/Conv2D/ReadVariableOpReadVariableOp%conv01_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv01/Conv2D/ReadVariableOp╕
Conv01/Conv2DConv2Dinputs$Conv01/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv01/Conv2Dб
Conv01/BiasAdd/ReadVariableOpReadVariableOp&conv01_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv01/BiasAdd/ReadVariableOpд
Conv01/BiasAddBiasAddConv01/Conv2D:output:0%Conv01/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
Conv01/BiasAddu
Conv01/ReluReluConv01/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
Conv01/Reluк
Conv02/Conv2D/ReadVariableOpReadVariableOp%conv02_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv02/Conv2D/ReadVariableOp╠
Conv02/Conv2DConv2DConv01/Relu:activations:0$Conv02/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
Conv02/Conv2Dб
Conv02/BiasAdd/ReadVariableOpReadVariableOp&conv02_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv02/BiasAdd/ReadVariableOpд
Conv02/BiasAddBiasAddConv02/Conv2D:output:0%Conv02/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
Conv02/BiasAddu
Conv02/ReluReluConv02/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
Conv02/Relu┴
max_pooling2d/MaxPoolMaxPoolConv02/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolК
dropout/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:         @2
dropout/Identityл
Conv11/Conv2D/ReadVariableOpReadVariableOp%conv11_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv11/Conv2D/ReadVariableOp╠
Conv11/Conv2DConv2Ddropout/Identity:output:0$Conv11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv11/Conv2Dв
Conv11/BiasAdd/ReadVariableOpReadVariableOp&conv11_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
Conv11/BiasAdd/ReadVariableOpе
Conv11/BiasAddBiasAddConv11/Conv2D:output:0%Conv11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
Conv11/BiasAddv
Conv11/ReluReluConv11/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
Conv11/Reluм
Conv12/Conv2D/ReadVariableOpReadVariableOp%conv12_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv12/Conv2D/ReadVariableOp═
Conv12/Conv2DConv2DConv11/Relu:activations:0$Conv12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         		А*
paddingVALID*
strides
2
Conv12/Conv2Dв
Conv12/BiasAdd/ReadVariableOpReadVariableOp&conv12_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
Conv12/BiasAdd/ReadVariableOpе
Conv12/BiasAddBiasAddConv12/Conv2D:output:0%Conv12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         		А2
Conv12/BiasAddv
Conv12/ReluReluConv12/BiasAdd:output:0*
T0*0
_output_shapes
:         		А2
Conv12/Relu╞
max_pooling2d_1/MaxPoolMaxPoolConv12/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolС
dropout_1/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:         А2
dropout_1/Identityм
Conv21/Conv2D/ReadVariableOpReadVariableOp%conv21_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv21/Conv2D/ReadVariableOp╬
Conv21/Conv2DConv2Ddropout_1/Identity:output:0$Conv21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv21/Conv2Dв
Conv21/BiasAdd/ReadVariableOpReadVariableOp&conv21_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
Conv21/BiasAdd/ReadVariableOpе
Conv21/BiasAddBiasAddConv21/Conv2D:output:0%Conv21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
Conv21/BiasAddv
Conv21/ReluReluConv21/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
Conv21/Reluм
Conv22/Conv2D/ReadVariableOpReadVariableOp%conv22_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv22/Conv2D/ReadVariableOp═
Conv22/Conv2DConv2DConv21/Relu:activations:0$Conv22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
Conv22/Conv2Dв
Conv22/BiasAdd/ReadVariableOpReadVariableOp&conv22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
Conv22/BiasAdd/ReadVariableOpе
Conv22/BiasAddBiasAddConv22/Conv2D:output:0%Conv22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
Conv22/BiasAddv
Conv22/ReluReluConv22/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
Conv22/Relu╞
max_pooling2d_2/MaxPoolMaxPoolConv22/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolС
dropout_2/IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:         А2
dropout_2/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten/ConstХ
flatten/ReshapeReshapedropout_2/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А2
flatten/Reshapeд
Dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Dense1/MatMul/ReadVariableOpЫ
Dense1/MatMulMatMulflatten/Reshape:output:0$Dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
Dense1/MatMulв
Dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
Dense1/BiasAdd/ReadVariableOpЮ
Dense1/BiasAddBiasAddDense1/MatMul:product:0%Dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
Dense1/BiasAddn
Dense1/ReluReluDense1/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
Dense1/ReluВ
dropout_3/IdentityIdentityDense1/Relu:activations:0*
T0*(
_output_shapes
:         А2
dropout_3/Identityг
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	А+*
dtype02
Output/MatMul/ReadVariableOpЭ
Output/MatMulMatMuldropout_3/Identity:output:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         +2
Output/MatMulб
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:+*
dtype02
Output/BiasAdd/ReadVariableOpЭ
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         +2
Output/BiasAddv
Output/SoftmaxSoftmaxOutput/BiasAdd:output:0*
T0*'
_output_shapes
:         +2
Output/Softmaxs
IdentityIdentityOutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         +2

Identity╞
NoOpNoOp^Conv01/BiasAdd/ReadVariableOp^Conv01/Conv2D/ReadVariableOp^Conv02/BiasAdd/ReadVariableOp^Conv02/Conv2D/ReadVariableOp^Conv11/BiasAdd/ReadVariableOp^Conv11/Conv2D/ReadVariableOp^Conv12/BiasAdd/ReadVariableOp^Conv12/Conv2D/ReadVariableOp^Conv21/BiasAdd/ReadVariableOp^Conv21/Conv2D/ReadVariableOp^Conv22/BiasAdd/ReadVariableOp^Conv22/Conv2D/ReadVariableOp^Dense1/BiasAdd/ReadVariableOp^Dense1/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2>
Conv01/BiasAdd/ReadVariableOpConv01/BiasAdd/ReadVariableOp2<
Conv01/Conv2D/ReadVariableOpConv01/Conv2D/ReadVariableOp2>
Conv02/BiasAdd/ReadVariableOpConv02/BiasAdd/ReadVariableOp2<
Conv02/Conv2D/ReadVariableOpConv02/Conv2D/ReadVariableOp2>
Conv11/BiasAdd/ReadVariableOpConv11/BiasAdd/ReadVariableOp2<
Conv11/Conv2D/ReadVariableOpConv11/Conv2D/ReadVariableOp2>
Conv12/BiasAdd/ReadVariableOpConv12/BiasAdd/ReadVariableOp2<
Conv12/Conv2D/ReadVariableOpConv12/Conv2D/ReadVariableOp2>
Conv21/BiasAdd/ReadVariableOpConv21/BiasAdd/ReadVariableOp2<
Conv21/Conv2D/ReadVariableOpConv21/Conv2D/ReadVariableOp2>
Conv22/BiasAdd/ReadVariableOpConv22/BiasAdd/ReadVariableOp2<
Conv22/Conv2D/ReadVariableOpConv22/Conv2D/ReadVariableOp2>
Dense1/BiasAdd/ReadVariableOpDense1/BiasAdd/ReadVariableOp2<
Dense1/MatMul/ReadVariableOpDense1/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
к
█
*__inference_sequential_layer_call_fn_17018
conv01_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А+

unknown_14:+
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallconv01_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         +*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_169462
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         +2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameConv01_input
╠
C
'__inference_flatten_layer_call_fn_17679

inputs
identity┴
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_165832
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ш
╒
*__inference_sequential_layer_call_fn_17407

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А+

unknown_14:+
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         +*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_169462
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         +2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Л
ї
A__inference_Dense1_layer_call_and_return_conditional_losses_16596

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
│
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_16692

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Є
Ц
&__inference_Dense1_layer_call_fn_17699

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Dense1_layer_call_and_return_conditional_losses_165962
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
║
У
E__inference_sequential_layer_call_and_return_conditional_losses_17333

inputs?
%conv01_conv2d_readvariableop_resource:@4
&conv01_biasadd_readvariableop_resource:@?
%conv02_conv2d_readvariableop_resource:@@4
&conv02_biasadd_readvariableop_resource:@@
%conv11_conv2d_readvariableop_resource:@А5
&conv11_biasadd_readvariableop_resource:	АA
%conv12_conv2d_readvariableop_resource:АА5
&conv12_biasadd_readvariableop_resource:	АA
%conv21_conv2d_readvariableop_resource:АА5
&conv21_biasadd_readvariableop_resource:	АA
%conv22_conv2d_readvariableop_resource:АА5
&conv22_biasadd_readvariableop_resource:	А9
%dense1_matmul_readvariableop_resource:
АА5
&dense1_biasadd_readvariableop_resource:	А8
%output_matmul_readvariableop_resource:	А+4
&output_biasadd_readvariableop_resource:+
identityИвConv01/BiasAdd/ReadVariableOpвConv01/Conv2D/ReadVariableOpвConv02/BiasAdd/ReadVariableOpвConv02/Conv2D/ReadVariableOpвConv11/BiasAdd/ReadVariableOpвConv11/Conv2D/ReadVariableOpвConv12/BiasAdd/ReadVariableOpвConv12/Conv2D/ReadVariableOpвConv21/BiasAdd/ReadVariableOpвConv21/Conv2D/ReadVariableOpвConv22/BiasAdd/ReadVariableOpвConv22/Conv2D/ReadVariableOpвDense1/BiasAdd/ReadVariableOpвDense1/MatMul/ReadVariableOpвOutput/BiasAdd/ReadVariableOpвOutput/MatMul/ReadVariableOpк
Conv01/Conv2D/ReadVariableOpReadVariableOp%conv01_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv01/Conv2D/ReadVariableOp╕
Conv01/Conv2DConv2Dinputs$Conv01/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv01/Conv2Dб
Conv01/BiasAdd/ReadVariableOpReadVariableOp&conv01_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv01/BiasAdd/ReadVariableOpд
Conv01/BiasAddBiasAddConv01/Conv2D:output:0%Conv01/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
Conv01/BiasAddu
Conv01/ReluReluConv01/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
Conv01/Reluк
Conv02/Conv2D/ReadVariableOpReadVariableOp%conv02_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv02/Conv2D/ReadVariableOp╠
Conv02/Conv2DConv2DConv01/Relu:activations:0$Conv02/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
Conv02/Conv2Dб
Conv02/BiasAdd/ReadVariableOpReadVariableOp&conv02_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv02/BiasAdd/ReadVariableOpд
Conv02/BiasAddBiasAddConv02/Conv2D:output:0%Conv02/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
Conv02/BiasAddu
Conv02/ReluReluConv02/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
Conv02/Relu┴
max_pooling2d/MaxPoolMaxPoolConv02/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPools
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/dropout/Constл
dropout/dropout/MulMulmax_pooling2d/MaxPool:output:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/dropout/Mul|
dropout/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape╘
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2 
dropout/dropout/GreaterEqual/yц
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/dropout/GreaterEqualЯ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/dropout/Castв
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/dropout/Mul_1л
Conv11/Conv2D/ReadVariableOpReadVariableOp%conv11_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv11/Conv2D/ReadVariableOp╠
Conv11/Conv2DConv2Ddropout/dropout/Mul_1:z:0$Conv11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv11/Conv2Dв
Conv11/BiasAdd/ReadVariableOpReadVariableOp&conv11_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
Conv11/BiasAdd/ReadVariableOpе
Conv11/BiasAddBiasAddConv11/Conv2D:output:0%Conv11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
Conv11/BiasAddv
Conv11/ReluReluConv11/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
Conv11/Reluм
Conv12/Conv2D/ReadVariableOpReadVariableOp%conv12_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv12/Conv2D/ReadVariableOp═
Conv12/Conv2DConv2DConv11/Relu:activations:0$Conv12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         		А*
paddingVALID*
strides
2
Conv12/Conv2Dв
Conv12/BiasAdd/ReadVariableOpReadVariableOp&conv12_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
Conv12/BiasAdd/ReadVariableOpе
Conv12/BiasAddBiasAddConv12/Conv2D:output:0%Conv12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         		А2
Conv12/BiasAddv
Conv12/ReluReluConv12/BiasAdd:output:0*
T0*0
_output_shapes
:         		А2
Conv12/Relu╞
max_pooling2d_1/MaxPoolMaxPoolConv12/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout_1/dropout/Const┤
dropout_1/dropout/MulMul max_pooling2d_1/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_1/dropout/MulВ
dropout_1/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape█
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2"
 dropout_1/dropout/GreaterEqual/yя
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2 
dropout_1/dropout/GreaterEqualж
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_1/dropout/Castл
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_1/dropout/Mul_1м
Conv21/Conv2D/ReadVariableOpReadVariableOp%conv21_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv21/Conv2D/ReadVariableOp╬
Conv21/Conv2DConv2Ddropout_1/dropout/Mul_1:z:0$Conv21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv21/Conv2Dв
Conv21/BiasAdd/ReadVariableOpReadVariableOp&conv21_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
Conv21/BiasAdd/ReadVariableOpе
Conv21/BiasAddBiasAddConv21/Conv2D:output:0%Conv21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
Conv21/BiasAddv
Conv21/ReluReluConv21/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
Conv21/Reluм
Conv22/Conv2D/ReadVariableOpReadVariableOp%conv22_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv22/Conv2D/ReadVariableOp═
Conv22/Conv2DConv2DConv21/Relu:activations:0$Conv22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
Conv22/Conv2Dв
Conv22/BiasAdd/ReadVariableOpReadVariableOp&conv22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
Conv22/BiasAdd/ReadVariableOpе
Conv22/BiasAddBiasAddConv22/Conv2D:output:0%Conv22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
Conv22/BiasAddv
Conv22/ReluReluConv22/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
Conv22/Relu╞
max_pooling2d_2/MaxPoolMaxPoolConv22/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout_2/dropout/Const┤
dropout_2/dropout/MulMul max_pooling2d_2/MaxPool:output:0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_2/dropout/MulВ
dropout_2/dropout/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape█
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype020
.dropout_2/dropout/random_uniform/RandomUniformЙ
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2"
 dropout_2/dropout/GreaterEqual/yя
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2 
dropout_2/dropout/GreaterEqualж
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_2/dropout/Castл
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_2/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten/ConstХ
flatten/ReshapeReshapedropout_2/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:         А2
flatten/Reshapeд
Dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Dense1/MatMul/ReadVariableOpЫ
Dense1/MatMulMatMulflatten/Reshape:output:0$Dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
Dense1/MatMulв
Dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
Dense1/BiasAdd/ReadVariableOpЮ
Dense1/BiasAddBiasAddDense1/MatMul:product:0%Dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
Dense1/BiasAddn
Dense1/ReluReluDense1/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
Dense1/Reluw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_3/dropout/Constе
dropout_3/dropout/MulMulDense1/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout_3/dropout/Mul{
dropout_3/dropout/ShapeShapeDense1/Relu:activations:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape╙
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype020
.dropout_3/dropout/random_uniform/RandomUniformЙ
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_3/dropout/GreaterEqual/yч
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2 
dropout_3/dropout/GreaterEqualЮ
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout_3/dropout/Castг
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout_3/dropout/Mul_1г
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	А+*
dtype02
Output/MatMul/ReadVariableOpЭ
Output/MatMulMatMuldropout_3/dropout/Mul_1:z:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         +2
Output/MatMulб
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:+*
dtype02
Output/BiasAdd/ReadVariableOpЭ
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         +2
Output/BiasAddv
Output/SoftmaxSoftmaxOutput/BiasAdd:output:0*
T0*'
_output_shapes
:         +2
Output/Softmaxs
IdentityIdentityOutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         +2

Identity╞
NoOpNoOp^Conv01/BiasAdd/ReadVariableOp^Conv01/Conv2D/ReadVariableOp^Conv02/BiasAdd/ReadVariableOp^Conv02/Conv2D/ReadVariableOp^Conv11/BiasAdd/ReadVariableOp^Conv11/Conv2D/ReadVariableOp^Conv12/BiasAdd/ReadVariableOp^Conv12/Conv2D/ReadVariableOp^Conv21/BiasAdd/ReadVariableOp^Conv21/Conv2D/ReadVariableOp^Conv22/BiasAdd/ReadVariableOp^Conv22/Conv2D/ReadVariableOp^Dense1/BiasAdd/ReadVariableOp^Dense1/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2>
Conv01/BiasAdd/ReadVariableOpConv01/BiasAdd/ReadVariableOp2<
Conv01/Conv2D/ReadVariableOpConv01/Conv2D/ReadVariableOp2>
Conv02/BiasAdd/ReadVariableOpConv02/BiasAdd/ReadVariableOp2<
Conv02/Conv2D/ReadVariableOpConv02/Conv2D/ReadVariableOp2>
Conv11/BiasAdd/ReadVariableOpConv11/BiasAdd/ReadVariableOp2<
Conv11/Conv2D/ReadVariableOpConv11/Conv2D/ReadVariableOp2>
Conv12/BiasAdd/ReadVariableOpConv12/BiasAdd/ReadVariableOp2<
Conv12/Conv2D/ReadVariableOpConv12/Conv2D/ReadVariableOp2>
Conv21/BiasAdd/ReadVariableOpConv21/BiasAdd/ReadVariableOp2<
Conv21/Conv2D/ReadVariableOpConv21/Conv2D/ReadVariableOp2>
Conv22/BiasAdd/ReadVariableOpConv22/BiasAdd/ReadVariableOp2<
Conv22/Conv2D/ReadVariableOpConv22/Conv2D/ReadVariableOp2>
Dense1/BiasAdd/ReadVariableOpDense1/BiasAdd/ReadVariableOp2<
Dense1/MatMul/ReadVariableOpDense1/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
я
№
A__inference_Conv11_layer_call_and_return_conditional_losses_17505

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
к
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_16416

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
р
E
)__inference_dropout_1_layer_call_fn_17576

inputs
identity╦
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_165282
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ї
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_17704

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
шC
Л
E__inference_sequential_layer_call_and_return_conditional_losses_16627

inputs&
conv01_16448:@
conv01_16450:@&
conv02_16465:@@
conv02_16467:@'
conv11_16495:@А
conv11_16497:	А(
conv12_16512:АА
conv12_16514:	А(
conv21_16542:АА
conv21_16544:	А(
conv22_16559:АА
conv22_16561:	А 
dense1_16597:
АА
dense1_16599:	А
output_16621:	А+
output_16623:+
identityИвConv01/StatefulPartitionedCallвConv02/StatefulPartitionedCallвConv11/StatefulPartitionedCallвConv12/StatefulPartitionedCallвConv21/StatefulPartitionedCallвConv22/StatefulPartitionedCallвDense1/StatefulPartitionedCallвOutput/StatefulPartitionedCallП
Conv01/StatefulPartitionedCallStatefulPartitionedCallinputsconv01_16448conv01_16450*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv01_layer_call_and_return_conditional_losses_164472 
Conv01/StatefulPartitionedCall░
Conv02/StatefulPartitionedCallStatefulPartitionedCall'Conv01/StatefulPartitionedCall:output:0conv02_16465conv02_16467*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv02_layer_call_and_return_conditional_losses_164642 
Conv02/StatefulPartitionedCallЛ
max_pooling2d/PartitionedCallPartitionedCall'Conv02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_164742
max_pooling2d/PartitionedCall°
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_164812
dropout/PartitionedCallк
Conv11/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv11_16495conv11_16497*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv11_layer_call_and_return_conditional_losses_164942 
Conv11/StatefulPartitionedCall▒
Conv12/StatefulPartitionedCallStatefulPartitionedCall'Conv11/StatefulPartitionedCall:output:0conv12_16512conv12_16514*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         		А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv12_layer_call_and_return_conditional_losses_165112 
Conv12/StatefulPartitionedCallТ
max_pooling2d_1/PartitionedCallPartitionedCall'Conv12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_165212!
max_pooling2d_1/PartitionedCallБ
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_165282
dropout_1/PartitionedCallм
Conv21/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv21_16542conv21_16544*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv21_layer_call_and_return_conditional_losses_165412 
Conv21/StatefulPartitionedCall▒
Conv22/StatefulPartitionedCallStatefulPartitionedCall'Conv21/StatefulPartitionedCall:output:0conv22_16559conv22_16561*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv22_layer_call_and_return_conditional_losses_165582 
Conv22/StatefulPartitionedCallТ
max_pooling2d_2/PartitionedCallPartitionedCall'Conv22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_165682!
max_pooling2d_2/PartitionedCallБ
dropout_2/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_165752
dropout_2/PartitionedCallэ
flatten/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_165832
flatten/PartitionedCallв
Dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_16597dense1_16599*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Dense1_layer_call_and_return_conditional_losses_165962 
Dense1/StatefulPartitionedCall°
dropout_3/PartitionedCallPartitionedCall'Dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_166072
dropout_3/PartitionedCallг
Output/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0output_16621output_16623*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         +*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_166202 
Output/StatefulPartitionedCallВ
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         +2

Identity╓
NoOpNoOp^Conv01/StatefulPartitionedCall^Conv02/StatefulPartitionedCall^Conv11/StatefulPartitionedCall^Conv12/StatefulPartitionedCall^Conv21/StatefulPartitionedCall^Conv22/StatefulPartitionedCall^Dense1/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2@
Conv01/StatefulPartitionedCallConv01/StatefulPartitionedCall2@
Conv02/StatefulPartitionedCallConv02/StatefulPartitionedCall2@
Conv11/StatefulPartitionedCallConv11/StatefulPartitionedCall2@
Conv12/StatefulPartitionedCallConv12/StatefulPartitionedCall2@
Conv21/StatefulPartitionedCallConv21/StatefulPartitionedCall2@
Conv22/StatefulPartitionedCallConv22/StatefulPartitionedCall2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
·C
С
E__inference_sequential_layer_call_and_return_conditional_losses_17070
conv01_input&
conv01_17021:@
conv01_17023:@&
conv02_17026:@@
conv02_17028:@'
conv11_17033:@А
conv11_17035:	А(
conv12_17038:АА
conv12_17040:	А(
conv21_17045:АА
conv21_17047:	А(
conv22_17050:АА
conv22_17052:	А 
dense1_17058:
АА
dense1_17060:	А
output_17064:	А+
output_17066:+
identityИвConv01/StatefulPartitionedCallвConv02/StatefulPartitionedCallвConv11/StatefulPartitionedCallвConv12/StatefulPartitionedCallвConv21/StatefulPartitionedCallвConv22/StatefulPartitionedCallвDense1/StatefulPartitionedCallвOutput/StatefulPartitionedCallХ
Conv01/StatefulPartitionedCallStatefulPartitionedCallconv01_inputconv01_17021conv01_17023*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv01_layer_call_and_return_conditional_losses_164472 
Conv01/StatefulPartitionedCall░
Conv02/StatefulPartitionedCallStatefulPartitionedCall'Conv01/StatefulPartitionedCall:output:0conv02_17026conv02_17028*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv02_layer_call_and_return_conditional_losses_164642 
Conv02/StatefulPartitionedCallЛ
max_pooling2d/PartitionedCallPartitionedCall'Conv02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_164742
max_pooling2d/PartitionedCall°
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_164812
dropout/PartitionedCallк
Conv11/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv11_17033conv11_17035*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv11_layer_call_and_return_conditional_losses_164942 
Conv11/StatefulPartitionedCall▒
Conv12/StatefulPartitionedCallStatefulPartitionedCall'Conv11/StatefulPartitionedCall:output:0conv12_17038conv12_17040*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         		А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv12_layer_call_and_return_conditional_losses_165112 
Conv12/StatefulPartitionedCallТ
max_pooling2d_1/PartitionedCallPartitionedCall'Conv12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_165212!
max_pooling2d_1/PartitionedCallБ
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_165282
dropout_1/PartitionedCallм
Conv21/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv21_17045conv21_17047*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv21_layer_call_and_return_conditional_losses_165412 
Conv21/StatefulPartitionedCall▒
Conv22/StatefulPartitionedCallStatefulPartitionedCall'Conv21/StatefulPartitionedCall:output:0conv22_17050conv22_17052*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv22_layer_call_and_return_conditional_losses_165582 
Conv22/StatefulPartitionedCallТ
max_pooling2d_2/PartitionedCallPartitionedCall'Conv22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_165682!
max_pooling2d_2/PartitionedCallБ
dropout_2/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_165752
dropout_2/PartitionedCallэ
flatten/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_165832
flatten/PartitionedCallв
Dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_17058dense1_17060*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Dense1_layer_call_and_return_conditional_losses_165962 
Dense1/StatefulPartitionedCall°
dropout_3/PartitionedCallPartitionedCall'Dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_166072
dropout_3/PartitionedCallг
Output/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0output_17064output_17066*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         +*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_166202 
Output/StatefulPartitionedCallВ
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         +2

Identity╓
NoOpNoOp^Conv01/StatefulPartitionedCall^Conv02/StatefulPartitionedCall^Conv11/StatefulPartitionedCall^Conv12/StatefulPartitionedCall^Conv21/StatefulPartitionedCall^Conv22/StatefulPartitionedCall^Dense1/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2@
Conv01/StatefulPartitionedCallConv01/StatefulPartitionedCall2@
Conv02/StatefulPartitionedCallConv02/StatefulPartitionedCall2@
Conv11/StatefulPartitionedCallConv11/StatefulPartitionedCall2@
Conv12/StatefulPartitionedCallConv12/StatefulPartitionedCall2@
Conv21/StatefulPartitionedCallConv21/StatefulPartitionedCall2@
Conv22/StatefulPartitionedCallConv22/StatefulPartitionedCall2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameConv01_input
Л
є
A__inference_Output_layer_call_and_return_conditional_losses_17737

inputs1
matmul_readvariableop_resource:	А+-
biasadd_readvariableop_resource:+
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А+*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         +2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:+*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         +2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         +2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         +2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ї
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_16607

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
├
b
)__inference_dropout_1_layer_call_fn_17581

inputs
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_167792
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╗
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_16474

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┴
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_16521

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         		А:X T
0
_output_shapes
:         		А
 
_user_specified_nameinputs
ю
Ф
&__inference_Output_layer_call_fn_17746

inputs
unknown:	А+
	unknown_0:+
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         +*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_166202
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         +2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ч
·
A__inference_Conv01_layer_call_and_return_conditional_losses_16447

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╒
K
/__inference_max_pooling2d_1_layer_call_fn_17549

inputs
identityы
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_163942
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
кn
╘
 __inference__wrapped_model_16363
conv01_inputJ
0sequential_conv01_conv2d_readvariableop_resource:@?
1sequential_conv01_biasadd_readvariableop_resource:@J
0sequential_conv02_conv2d_readvariableop_resource:@@?
1sequential_conv02_biasadd_readvariableop_resource:@K
0sequential_conv11_conv2d_readvariableop_resource:@А@
1sequential_conv11_biasadd_readvariableop_resource:	АL
0sequential_conv12_conv2d_readvariableop_resource:АА@
1sequential_conv12_biasadd_readvariableop_resource:	АL
0sequential_conv21_conv2d_readvariableop_resource:АА@
1sequential_conv21_biasadd_readvariableop_resource:	АL
0sequential_conv22_conv2d_readvariableop_resource:АА@
1sequential_conv22_biasadd_readvariableop_resource:	АD
0sequential_dense1_matmul_readvariableop_resource:
АА@
1sequential_dense1_biasadd_readvariableop_resource:	АC
0sequential_output_matmul_readvariableop_resource:	А+?
1sequential_output_biasadd_readvariableop_resource:+
identityИв(sequential/Conv01/BiasAdd/ReadVariableOpв'sequential/Conv01/Conv2D/ReadVariableOpв(sequential/Conv02/BiasAdd/ReadVariableOpв'sequential/Conv02/Conv2D/ReadVariableOpв(sequential/Conv11/BiasAdd/ReadVariableOpв'sequential/Conv11/Conv2D/ReadVariableOpв(sequential/Conv12/BiasAdd/ReadVariableOpв'sequential/Conv12/Conv2D/ReadVariableOpв(sequential/Conv21/BiasAdd/ReadVariableOpв'sequential/Conv21/Conv2D/ReadVariableOpв(sequential/Conv22/BiasAdd/ReadVariableOpв'sequential/Conv22/Conv2D/ReadVariableOpв(sequential/Dense1/BiasAdd/ReadVariableOpв'sequential/Dense1/MatMul/ReadVariableOpв(sequential/Output/BiasAdd/ReadVariableOpв'sequential/Output/MatMul/ReadVariableOp╦
'sequential/Conv01/Conv2D/ReadVariableOpReadVariableOp0sequential_conv01_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'sequential/Conv01/Conv2D/ReadVariableOp▀
sequential/Conv01/Conv2DConv2Dconv01_input/sequential/Conv01/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
sequential/Conv01/Conv2D┬
(sequential/Conv01/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv01_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(sequential/Conv01/BiasAdd/ReadVariableOp╨
sequential/Conv01/BiasAddBiasAdd!sequential/Conv01/Conv2D:output:00sequential/Conv01/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
sequential/Conv01/BiasAddЦ
sequential/Conv01/ReluRelu"sequential/Conv01/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
sequential/Conv01/Relu╦
'sequential/Conv02/Conv2D/ReadVariableOpReadVariableOp0sequential_conv02_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02)
'sequential/Conv02/Conv2D/ReadVariableOp°
sequential/Conv02/Conv2DConv2D$sequential/Conv01/Relu:activations:0/sequential/Conv02/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
sequential/Conv02/Conv2D┬
(sequential/Conv02/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv02_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(sequential/Conv02/BiasAdd/ReadVariableOp╨
sequential/Conv02/BiasAddBiasAdd!sequential/Conv02/Conv2D:output:00sequential/Conv02/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
sequential/Conv02/BiasAddЦ
sequential/Conv02/ReluRelu"sequential/Conv02/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
sequential/Conv02/Reluт
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/Conv02/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2"
 sequential/max_pooling2d/MaxPoolл
sequential/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:         @2
sequential/dropout/Identity╠
'sequential/Conv11/Conv2D/ReadVariableOpReadVariableOp0sequential_conv11_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02)
'sequential/Conv11/Conv2D/ReadVariableOp°
sequential/Conv11/Conv2DConv2D$sequential/dropout/Identity:output:0/sequential/Conv11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
sequential/Conv11/Conv2D├
(sequential/Conv11/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv11_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(sequential/Conv11/BiasAdd/ReadVariableOp╤
sequential/Conv11/BiasAddBiasAdd!sequential/Conv11/Conv2D:output:00sequential/Conv11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
sequential/Conv11/BiasAddЧ
sequential/Conv11/ReluRelu"sequential/Conv11/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
sequential/Conv11/Relu═
'sequential/Conv12/Conv2D/ReadVariableOpReadVariableOp0sequential_conv12_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02)
'sequential/Conv12/Conv2D/ReadVariableOp∙
sequential/Conv12/Conv2DConv2D$sequential/Conv11/Relu:activations:0/sequential/Conv12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         		А*
paddingVALID*
strides
2
sequential/Conv12/Conv2D├
(sequential/Conv12/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv12_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(sequential/Conv12/BiasAdd/ReadVariableOp╤
sequential/Conv12/BiasAddBiasAdd!sequential/Conv12/Conv2D:output:00sequential/Conv12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         		А2
sequential/Conv12/BiasAddЧ
sequential/Conv12/ReluRelu"sequential/Conv12/BiasAdd:output:0*
T0*0
_output_shapes
:         		А2
sequential/Conv12/Reluч
"sequential/max_pooling2d_1/MaxPoolMaxPool$sequential/Conv12/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_1/MaxPool▓
sequential/dropout_1/IdentityIdentity+sequential/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:         А2
sequential/dropout_1/Identity═
'sequential/Conv21/Conv2D/ReadVariableOpReadVariableOp0sequential_conv21_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02)
'sequential/Conv21/Conv2D/ReadVariableOp·
sequential/Conv21/Conv2DConv2D&sequential/dropout_1/Identity:output:0/sequential/Conv21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
sequential/Conv21/Conv2D├
(sequential/Conv21/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv21_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(sequential/Conv21/BiasAdd/ReadVariableOp╤
sequential/Conv21/BiasAddBiasAdd!sequential/Conv21/Conv2D:output:00sequential/Conv21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
sequential/Conv21/BiasAddЧ
sequential/Conv21/ReluRelu"sequential/Conv21/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
sequential/Conv21/Relu═
'sequential/Conv22/Conv2D/ReadVariableOpReadVariableOp0sequential_conv22_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02)
'sequential/Conv22/Conv2D/ReadVariableOp∙
sequential/Conv22/Conv2DConv2D$sequential/Conv21/Relu:activations:0/sequential/Conv22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
sequential/Conv22/Conv2D├
(sequential/Conv22/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(sequential/Conv22/BiasAdd/ReadVariableOp╤
sequential/Conv22/BiasAddBiasAdd!sequential/Conv22/Conv2D:output:00sequential/Conv22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
sequential/Conv22/BiasAddЧ
sequential/Conv22/ReluRelu"sequential/Conv22/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
sequential/Conv22/Reluч
"sequential/max_pooling2d_2/MaxPoolMaxPool$sequential/Conv22/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_2/MaxPool▓
sequential/dropout_2/IdentityIdentity+sequential/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:         А2
sequential/dropout_2/IdentityЕ
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
sequential/flatten/Const┴
sequential/flatten/ReshapeReshape&sequential/dropout_2/Identity:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:         А2
sequential/flatten/Reshape┼
'sequential/Dense1/MatMul/ReadVariableOpReadVariableOp0sequential_dense1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02)
'sequential/Dense1/MatMul/ReadVariableOp╟
sequential/Dense1/MatMulMatMul#sequential/flatten/Reshape:output:0/sequential/Dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
sequential/Dense1/MatMul├
(sequential/Dense1/BiasAdd/ReadVariableOpReadVariableOp1sequential_dense1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(sequential/Dense1/BiasAdd/ReadVariableOp╩
sequential/Dense1/BiasAddBiasAdd"sequential/Dense1/MatMul:product:00sequential/Dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
sequential/Dense1/BiasAddП
sequential/Dense1/ReluRelu"sequential/Dense1/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
sequential/Dense1/Reluг
sequential/dropout_3/IdentityIdentity$sequential/Dense1/Relu:activations:0*
T0*(
_output_shapes
:         А2
sequential/dropout_3/Identity─
'sequential/Output/MatMul/ReadVariableOpReadVariableOp0sequential_output_matmul_readvariableop_resource*
_output_shapes
:	А+*
dtype02)
'sequential/Output/MatMul/ReadVariableOp╔
sequential/Output/MatMulMatMul&sequential/dropout_3/Identity:output:0/sequential/Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         +2
sequential/Output/MatMul┬
(sequential/Output/BiasAdd/ReadVariableOpReadVariableOp1sequential_output_biasadd_readvariableop_resource*
_output_shapes
:+*
dtype02*
(sequential/Output/BiasAdd/ReadVariableOp╔
sequential/Output/BiasAddBiasAdd"sequential/Output/MatMul:product:00sequential/Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         +2
sequential/Output/BiasAddЧ
sequential/Output/SoftmaxSoftmax"sequential/Output/BiasAdd:output:0*
T0*'
_output_shapes
:         +2
sequential/Output/Softmax~
IdentityIdentity#sequential/Output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         +2

IdentityЎ
NoOpNoOp)^sequential/Conv01/BiasAdd/ReadVariableOp(^sequential/Conv01/Conv2D/ReadVariableOp)^sequential/Conv02/BiasAdd/ReadVariableOp(^sequential/Conv02/Conv2D/ReadVariableOp)^sequential/Conv11/BiasAdd/ReadVariableOp(^sequential/Conv11/Conv2D/ReadVariableOp)^sequential/Conv12/BiasAdd/ReadVariableOp(^sequential/Conv12/Conv2D/ReadVariableOp)^sequential/Conv21/BiasAdd/ReadVariableOp(^sequential/Conv21/Conv2D/ReadVariableOp)^sequential/Conv22/BiasAdd/ReadVariableOp(^sequential/Conv22/Conv2D/ReadVariableOp)^sequential/Dense1/BiasAdd/ReadVariableOp(^sequential/Dense1/MatMul/ReadVariableOp)^sequential/Output/BiasAdd/ReadVariableOp(^sequential/Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2T
(sequential/Conv01/BiasAdd/ReadVariableOp(sequential/Conv01/BiasAdd/ReadVariableOp2R
'sequential/Conv01/Conv2D/ReadVariableOp'sequential/Conv01/Conv2D/ReadVariableOp2T
(sequential/Conv02/BiasAdd/ReadVariableOp(sequential/Conv02/BiasAdd/ReadVariableOp2R
'sequential/Conv02/Conv2D/ReadVariableOp'sequential/Conv02/Conv2D/ReadVariableOp2T
(sequential/Conv11/BiasAdd/ReadVariableOp(sequential/Conv11/BiasAdd/ReadVariableOp2R
'sequential/Conv11/Conv2D/ReadVariableOp'sequential/Conv11/Conv2D/ReadVariableOp2T
(sequential/Conv12/BiasAdd/ReadVariableOp(sequential/Conv12/BiasAdd/ReadVariableOp2R
'sequential/Conv12/Conv2D/ReadVariableOp'sequential/Conv12/Conv2D/ReadVariableOp2T
(sequential/Conv21/BiasAdd/ReadVariableOp(sequential/Conv21/BiasAdd/ReadVariableOp2R
'sequential/Conv21/Conv2D/ReadVariableOp'sequential/Conv21/Conv2D/ReadVariableOp2T
(sequential/Conv22/BiasAdd/ReadVariableOp(sequential/Conv22/BiasAdd/ReadVariableOp2R
'sequential/Conv22/Conv2D/ReadVariableOp'sequential/Conv22/Conv2D/ReadVariableOp2T
(sequential/Dense1/BiasAdd/ReadVariableOp(sequential/Dense1/BiasAdd/ReadVariableOp2R
'sequential/Dense1/MatMul/ReadVariableOp'sequential/Dense1/MatMul/ReadVariableOp2T
(sequential/Output/BiasAdd/ReadVariableOp(sequential/Output/BiasAdd/ReadVariableOp2R
'sequential/Output/MatMul/ReadVariableOp'sequential/Output/MatMul/ReadVariableOp:] Y
/
_output_shapes
:         
&
_user_specified_nameConv01_input
ь
K
/__inference_max_pooling2d_2_layer_call_fn_17641

inputs
identity╤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_165682
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ц
^
B__inference_flatten_layer_call_and_return_conditional_losses_17674

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
└
E
)__inference_dropout_3_layer_call_fn_17721

inputs
identity├
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_166072
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
р
E
)__inference_dropout_2_layer_call_fn_17663

inputs
identity╦
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_165752
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ї
¤
A__inference_Conv22_layer_call_and_return_conditional_losses_16558

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
в
b
)__inference_dropout_3_layer_call_fn_17726

inputs
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_166922
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╗
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_17457

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ЬJ
Я
E__inference_sequential_layer_call_and_return_conditional_losses_17122
conv01_input&
conv01_17073:@
conv01_17075:@&
conv02_17078:@@
conv02_17080:@'
conv11_17085:@А
conv11_17087:	А(
conv12_17090:АА
conv12_17092:	А(
conv21_17097:АА
conv21_17099:	А(
conv22_17102:АА
conv22_17104:	А 
dense1_17110:
АА
dense1_17112:	А
output_17116:	А+
output_17118:+
identityИвConv01/StatefulPartitionedCallвConv02/StatefulPartitionedCallвConv11/StatefulPartitionedCallвConv12/StatefulPartitionedCallвConv21/StatefulPartitionedCallвConv22/StatefulPartitionedCallвDense1/StatefulPartitionedCallвOutput/StatefulPartitionedCallвdropout/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallв!dropout_2/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallХ
Conv01/StatefulPartitionedCallStatefulPartitionedCallconv01_inputconv01_17073conv01_17075*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv01_layer_call_and_return_conditional_losses_164472 
Conv01/StatefulPartitionedCall░
Conv02/StatefulPartitionedCallStatefulPartitionedCall'Conv01/StatefulPartitionedCall:output:0conv02_17078conv02_17080*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv02_layer_call_and_return_conditional_losses_164642 
Conv02/StatefulPartitionedCallЛ
max_pooling2d/PartitionedCallPartitionedCall'Conv02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_164742
max_pooling2d/PartitionedCallР
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_168272!
dropout/StatefulPartitionedCall▓
Conv11/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv11_17085conv11_17087*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv11_layer_call_and_return_conditional_losses_164942 
Conv11/StatefulPartitionedCall▒
Conv12/StatefulPartitionedCallStatefulPartitionedCall'Conv11/StatefulPartitionedCall:output:0conv12_17090conv12_17092*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         		А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv12_layer_call_and_return_conditional_losses_165112 
Conv12/StatefulPartitionedCallТ
max_pooling2d_1/PartitionedCallPartitionedCall'Conv12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_165212!
max_pooling2d_1/PartitionedCall╗
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_167792#
!dropout_1/StatefulPartitionedCall┤
Conv21/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv21_17097conv21_17099*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv21_layer_call_and_return_conditional_losses_165412 
Conv21/StatefulPartitionedCall▒
Conv22/StatefulPartitionedCallStatefulPartitionedCall'Conv21/StatefulPartitionedCall:output:0conv22_17102conv22_17104*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv22_layer_call_and_return_conditional_losses_165582 
Conv22/StatefulPartitionedCallТ
max_pooling2d_2/PartitionedCallPartitionedCall'Conv22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_165682!
max_pooling2d_2/PartitionedCall╜
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_167312#
!dropout_2/StatefulPartitionedCallї
flatten/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_165832
flatten/PartitionedCallв
Dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_17110dense1_17112*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Dense1_layer_call_and_return_conditional_losses_165962 
Dense1/StatefulPartitionedCall┤
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall'Dense1/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_166922#
!dropout_3/StatefulPartitionedCallл
Output/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0output_17116output_17118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         +*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_166202 
Output/StatefulPartitionedCallВ
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         +2

Identityф
NoOpNoOp^Conv01/StatefulPartitionedCall^Conv02/StatefulPartitionedCall^Conv11/StatefulPartitionedCall^Conv12/StatefulPartitionedCall^Conv21/StatefulPartitionedCall^Conv22/StatefulPartitionedCall^Dense1/StatefulPartitionedCall^Output/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2@
Conv01/StatefulPartitionedCallConv01/StatefulPartitionedCall2@
Conv02/StatefulPartitionedCallConv02/StatefulPartitionedCall2@
Conv11/StatefulPartitionedCallConv11/StatefulPartitionedCall2@
Conv12/StatefulPartitionedCallConv12/StatefulPartitionedCall2@
Conv21/StatefulPartitionedCallConv21/StatefulPartitionedCall2@
Conv22/StatefulPartitionedCallConv22/StatefulPartitionedCall2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameConv01_input
Ї
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_16731

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
КJ
Щ
E__inference_sequential_layer_call_and_return_conditional_losses_16946

inputs&
conv01_16897:@
conv01_16899:@&
conv02_16902:@@
conv02_16904:@'
conv11_16909:@А
conv11_16911:	А(
conv12_16914:АА
conv12_16916:	А(
conv21_16921:АА
conv21_16923:	А(
conv22_16926:АА
conv22_16928:	А 
dense1_16934:
АА
dense1_16936:	А
output_16940:	А+
output_16942:+
identityИвConv01/StatefulPartitionedCallвConv02/StatefulPartitionedCallвConv11/StatefulPartitionedCallвConv12/StatefulPartitionedCallвConv21/StatefulPartitionedCallвConv22/StatefulPartitionedCallвDense1/StatefulPartitionedCallвOutput/StatefulPartitionedCallвdropout/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallв!dropout_2/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallП
Conv01/StatefulPartitionedCallStatefulPartitionedCallinputsconv01_16897conv01_16899*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv01_layer_call_and_return_conditional_losses_164472 
Conv01/StatefulPartitionedCall░
Conv02/StatefulPartitionedCallStatefulPartitionedCall'Conv01/StatefulPartitionedCall:output:0conv02_16902conv02_16904*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv02_layer_call_and_return_conditional_losses_164642 
Conv02/StatefulPartitionedCallЛ
max_pooling2d/PartitionedCallPartitionedCall'Conv02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_164742
max_pooling2d/PartitionedCallР
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_168272!
dropout/StatefulPartitionedCall▓
Conv11/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv11_16909conv11_16911*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv11_layer_call_and_return_conditional_losses_164942 
Conv11/StatefulPartitionedCall▒
Conv12/StatefulPartitionedCallStatefulPartitionedCall'Conv11/StatefulPartitionedCall:output:0conv12_16914conv12_16916*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         		А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv12_layer_call_and_return_conditional_losses_165112 
Conv12/StatefulPartitionedCallТ
max_pooling2d_1/PartitionedCallPartitionedCall'Conv12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_165212!
max_pooling2d_1/PartitionedCall╗
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_167792#
!dropout_1/StatefulPartitionedCall┤
Conv21/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv21_16921conv21_16923*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv21_layer_call_and_return_conditional_losses_165412 
Conv21/StatefulPartitionedCall▒
Conv22/StatefulPartitionedCallStatefulPartitionedCall'Conv21/StatefulPartitionedCall:output:0conv22_16926conv22_16928*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv22_layer_call_and_return_conditional_losses_165582 
Conv22/StatefulPartitionedCallТ
max_pooling2d_2/PartitionedCallPartitionedCall'Conv22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_165682!
max_pooling2d_2/PartitionedCall╜
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_167312#
!dropout_2/StatefulPartitionedCallї
flatten/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_165832
flatten/PartitionedCallв
Dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_16934dense1_16936*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Dense1_layer_call_and_return_conditional_losses_165962 
Dense1/StatefulPartitionedCall┤
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall'Dense1/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_166922#
!dropout_3/StatefulPartitionedCallл
Output/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0output_16940output_16942*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         +*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_166202 
Output/StatefulPartitionedCallВ
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         +2

Identityф
NoOpNoOp^Conv01/StatefulPartitionedCall^Conv02/StatefulPartitionedCall^Conv11/StatefulPartitionedCall^Conv12/StatefulPartitionedCall^Conv21/StatefulPartitionedCall^Conv22/StatefulPartitionedCall^Dense1/StatefulPartitionedCall^Output/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2@
Conv01/StatefulPartitionedCallConv01/StatefulPartitionedCall2@
Conv02/StatefulPartitionedCallConv02/StatefulPartitionedCall2@
Conv11/StatefulPartitionedCallConv11/StatefulPartitionedCall2@
Conv12/StatefulPartitionedCallConv12/StatefulPartitionedCall2@
Conv21/StatefulPartitionedCallConv21/StatefulPartitionedCall2@
Conv22/StatefulPartitionedCallConv22/StatefulPartitionedCall2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╤
I
-__inference_max_pooling2d_layer_call_fn_17462

inputs
identityщ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_163722
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ї
¤
A__inference_Conv12_layer_call_and_return_conditional_losses_17525

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         		А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         		А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         		А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         		А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
├
b
)__inference_dropout_2_layer_call_fn_17668

inputs
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_167312
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
к
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17626

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┴
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17544

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         		А:X T
0
_output_shapes
:         		А
 
_user_specified_nameinputs
є
¤
A__inference_Conv21_layer_call_and_return_conditional_losses_17592

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Х
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_17559

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
к
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17539

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ї
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_17571

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Х
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_16575

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Х
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_17646

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
к
█
*__inference_sequential_layer_call_fn_16662
conv01_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А+

unknown_14:+
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallconv01_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         +*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_166272
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         +2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameConv01_input
Ї
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_17658

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╥є
Ж#
!__inference__traced_restore_18121
file_prefix8
assignvariableop_conv01_kernel:@,
assignvariableop_1_conv01_bias:@:
 assignvariableop_2_conv02_kernel:@@,
assignvariableop_3_conv02_bias:@;
 assignvariableop_4_conv11_kernel:@А-
assignvariableop_5_conv11_bias:	А<
 assignvariableop_6_conv12_kernel:АА-
assignvariableop_7_conv12_bias:	А<
 assignvariableop_8_conv21_kernel:АА-
assignvariableop_9_conv21_bias:	А=
!assignvariableop_10_conv22_kernel:АА.
assignvariableop_11_conv22_bias:	А5
!assignvariableop_12_dense1_kernel:
АА.
assignvariableop_13_dense1_bias:	А4
!assignvariableop_14_output_kernel:	А+-
assignvariableop_15_output_bias:+'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: B
(assignvariableop_25_adam_conv01_kernel_m:@4
&assignvariableop_26_adam_conv01_bias_m:@B
(assignvariableop_27_adam_conv02_kernel_m:@@4
&assignvariableop_28_adam_conv02_bias_m:@C
(assignvariableop_29_adam_conv11_kernel_m:@А5
&assignvariableop_30_adam_conv11_bias_m:	АD
(assignvariableop_31_adam_conv12_kernel_m:АА5
&assignvariableop_32_adam_conv12_bias_m:	АD
(assignvariableop_33_adam_conv21_kernel_m:АА5
&assignvariableop_34_adam_conv21_bias_m:	АD
(assignvariableop_35_adam_conv22_kernel_m:АА5
&assignvariableop_36_adam_conv22_bias_m:	А<
(assignvariableop_37_adam_dense1_kernel_m:
АА5
&assignvariableop_38_adam_dense1_bias_m:	А;
(assignvariableop_39_adam_output_kernel_m:	А+4
&assignvariableop_40_adam_output_bias_m:+B
(assignvariableop_41_adam_conv01_kernel_v:@4
&assignvariableop_42_adam_conv01_bias_v:@B
(assignvariableop_43_adam_conv02_kernel_v:@@4
&assignvariableop_44_adam_conv02_bias_v:@C
(assignvariableop_45_adam_conv11_kernel_v:@А5
&assignvariableop_46_adam_conv11_bias_v:	АD
(assignvariableop_47_adam_conv12_kernel_v:АА5
&assignvariableop_48_adam_conv12_bias_v:	АD
(assignvariableop_49_adam_conv21_kernel_v:АА5
&assignvariableop_50_adam_conv21_bias_v:	АD
(assignvariableop_51_adam_conv22_kernel_v:АА5
&assignvariableop_52_adam_conv22_bias_v:	А<
(assignvariableop_53_adam_dense1_kernel_v:
АА5
&assignvariableop_54_adam_dense1_bias_v:	А;
(assignvariableop_55_adam_output_kernel_v:	А+4
&assignvariableop_56_adam_output_bias_v:+
identity_58ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9┤ 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*└
value╢B│:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesГ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*З
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices╨
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*■
_output_shapesы
ш::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЭ
AssignVariableOpAssignVariableOpassignvariableop_conv01_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1г
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv01_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2е
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv02_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3г
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv02_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4е
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv11_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5г
AssignVariableOp_5AssignVariableOpassignvariableop_5_conv11_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6е
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv12_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7г
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv12_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8е
AssignVariableOp_8AssignVariableOp assignvariableop_8_conv21_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9г
AssignVariableOp_9AssignVariableOpassignvariableop_9_conv21_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10й
AssignVariableOp_10AssignVariableOp!assignvariableop_10_conv22_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11з
AssignVariableOp_11AssignVariableOpassignvariableop_11_conv22_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12й
AssignVariableOp_12AssignVariableOp!assignvariableop_12_dense1_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13з
AssignVariableOp_13AssignVariableOpassignvariableop_13_dense1_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14й
AssignVariableOp_14AssignVariableOp!assignvariableop_14_output_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15з
AssignVariableOp_15AssignVariableOpassignvariableop_15_output_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16е
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17з
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18з
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19ж
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20о
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21б
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22б
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23г
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24г
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25░
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv01_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26о
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_conv01_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27░
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_conv02_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28о
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_conv02_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29░
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_conv11_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30о
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_conv11_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31░
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_conv12_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32о
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_conv12_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33░
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv21_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34о
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_conv21_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35░
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_conv22_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36о
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_conv22_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37░
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_dense1_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38о
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_dense1_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39░
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_output_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40о
AssignVariableOp_40AssignVariableOp&assignvariableop_40_adam_output_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41░
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_conv01_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42о
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_conv01_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43░
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_conv02_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44о
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_conv02_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45░
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_conv11_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46о
AssignVariableOp_46AssignVariableOp&assignvariableop_46_adam_conv11_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47░
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_conv12_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48о
AssignVariableOp_48AssignVariableOp&assignvariableop_48_adam_conv12_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49░
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_conv21_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50о
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_conv21_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51░
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_conv22_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52о
AssignVariableOp_52AssignVariableOp&assignvariableop_52_adam_conv22_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53░
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_dense1_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54о
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_dense1_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55░
AssignVariableOp_55AssignVariableOp(assignvariableop_55_adam_output_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56о
AssignVariableOp_56AssignVariableOp&assignvariableop_56_adam_output_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_569
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp─

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_57f
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_58м

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_58Identity_58:output:0*З
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Л
є
A__inference_Output_layer_call_and_return_conditional_losses_16620

inputs1
matmul_readvariableop_resource:	А+-
biasadd_readvariableop_resource:+
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А+*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         +2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:+*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         +2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         +2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         +2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ы
Ю
&__inference_Conv21_layer_call_fn_17601

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv21_layer_call_and_return_conditional_losses_165412
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ь
K
/__inference_max_pooling2d_1_layer_call_fn_17554

inputs
identity╤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_165212
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         		А:X T
0
_output_shapes
:         		А
 
_user_specified_nameinputs
Ї
¤
A__inference_Conv22_layer_call_and_return_conditional_losses_17612

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
Ы
&__inference_Conv02_layer_call_fn_17447

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCall∙
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv02_layer_call_and_return_conditional_losses_164642
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ш
Э
&__inference_Conv11_layer_call_fn_17514

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Conv11_layer_call_and_return_conditional_losses_164942
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ш
·
A__inference_Conv02_layer_call_and_return_conditional_losses_16464

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ч
·
A__inference_Conv01_layer_call_and_return_conditional_losses_17418

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
│
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_17716

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
∙r
╖
__inference__traced_save_17940
file_prefix,
(savev2_conv01_kernel_read_readvariableop*
&savev2_conv01_bias_read_readvariableop,
(savev2_conv02_kernel_read_readvariableop*
&savev2_conv02_bias_read_readvariableop,
(savev2_conv11_kernel_read_readvariableop*
&savev2_conv11_bias_read_readvariableop,
(savev2_conv12_kernel_read_readvariableop*
&savev2_conv12_bias_read_readvariableop,
(savev2_conv21_kernel_read_readvariableop*
&savev2_conv21_bias_read_readvariableop,
(savev2_conv22_kernel_read_readvariableop*
&savev2_conv22_bias_read_readvariableop,
(savev2_dense1_kernel_read_readvariableop*
&savev2_dense1_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv01_kernel_m_read_readvariableop1
-savev2_adam_conv01_bias_m_read_readvariableop3
/savev2_adam_conv02_kernel_m_read_readvariableop1
-savev2_adam_conv02_bias_m_read_readvariableop3
/savev2_adam_conv11_kernel_m_read_readvariableop1
-savev2_adam_conv11_bias_m_read_readvariableop3
/savev2_adam_conv12_kernel_m_read_readvariableop1
-savev2_adam_conv12_bias_m_read_readvariableop3
/savev2_adam_conv21_kernel_m_read_readvariableop1
-savev2_adam_conv21_bias_m_read_readvariableop3
/savev2_adam_conv22_kernel_m_read_readvariableop1
-savev2_adam_conv22_bias_m_read_readvariableop3
/savev2_adam_dense1_kernel_m_read_readvariableop1
-savev2_adam_dense1_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop3
/savev2_adam_conv01_kernel_v_read_readvariableop1
-savev2_adam_conv01_bias_v_read_readvariableop3
/savev2_adam_conv02_kernel_v_read_readvariableop1
-savev2_adam_conv02_bias_v_read_readvariableop3
/savev2_adam_conv11_kernel_v_read_readvariableop1
-savev2_adam_conv11_bias_v_read_readvariableop3
/savev2_adam_conv12_kernel_v_read_readvariableop1
-savev2_adam_conv12_bias_v_read_readvariableop3
/savev2_adam_conv21_kernel_v_read_readvariableop1
-savev2_adam_conv21_bias_v_read_readvariableop3
/savev2_adam_conv22_kernel_v_read_readvariableop1
-savev2_adam_conv22_bias_v_read_readvariableop3
/savev2_adam_dense1_kernel_v_read_readvariableop1
-savev2_adam_dense1_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameо 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*└
value╢B│:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names¤
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*З
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices█
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv01_kernel_read_readvariableop&savev2_conv01_bias_read_readvariableop(savev2_conv02_kernel_read_readvariableop&savev2_conv02_bias_read_readvariableop(savev2_conv11_kernel_read_readvariableop&savev2_conv11_bias_read_readvariableop(savev2_conv12_kernel_read_readvariableop&savev2_conv12_bias_read_readvariableop(savev2_conv21_kernel_read_readvariableop&savev2_conv21_bias_read_readvariableop(savev2_conv22_kernel_read_readvariableop&savev2_conv22_bias_read_readvariableop(savev2_dense1_kernel_read_readvariableop&savev2_dense1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv01_kernel_m_read_readvariableop-savev2_adam_conv01_bias_m_read_readvariableop/savev2_adam_conv02_kernel_m_read_readvariableop-savev2_adam_conv02_bias_m_read_readvariableop/savev2_adam_conv11_kernel_m_read_readvariableop-savev2_adam_conv11_bias_m_read_readvariableop/savev2_adam_conv12_kernel_m_read_readvariableop-savev2_adam_conv12_bias_m_read_readvariableop/savev2_adam_conv21_kernel_m_read_readvariableop-savev2_adam_conv21_bias_m_read_readvariableop/savev2_adam_conv22_kernel_m_read_readvariableop-savev2_adam_conv22_bias_m_read_readvariableop/savev2_adam_dense1_kernel_m_read_readvariableop-savev2_adam_dense1_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop/savev2_adam_conv01_kernel_v_read_readvariableop-savev2_adam_conv01_bias_v_read_readvariableop/savev2_adam_conv02_kernel_v_read_readvariableop-savev2_adam_conv02_bias_v_read_readvariableop/savev2_adam_conv11_kernel_v_read_readvariableop-savev2_adam_conv11_bias_v_read_readvariableop/savev2_adam_conv12_kernel_v_read_readvariableop-savev2_adam_conv12_bias_v_read_readvariableop/savev2_adam_conv21_kernel_v_read_readvariableop-savev2_adam_conv21_bias_v_read_readvariableop/savev2_adam_conv22_kernel_v_read_readvariableop-savev2_adam_conv22_bias_v_read_readvariableop/savev2_adam_dense1_kernel_v_read_readvariableop-savev2_adam_dense1_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*ш
_input_shapes╓
╙: :@:@:@@:@:@А:А:АА:А:АА:А:АА:А:
АА:А:	А+:+: : : : : : : : : :@:@:@@:@:@А:А:АА:А:АА:А:АА:А:
АА:А:	А+:+:@:@:@@:@:@А:А:АА:А:АА:А:АА:А:
АА:А:	А+:+: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А+: 

_output_shapes
:+:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:. *
(
_output_shapes
:АА:!!

_output_shapes	
:А:."*
(
_output_shapes
:АА:!#

_output_shapes	
:А:.$*
(
_output_shapes
:АА:!%

_output_shapes	
:А:&&"
 
_output_shapes
:
АА:!'

_output_shapes	
:А:%(!

_output_shapes
:	А+: )

_output_shapes
:+:,*(
&
_output_shapes
:@: +

_output_shapes
:@:,,(
&
_output_shapes
:@@: -

_output_shapes
:@:-.)
'
_output_shapes
:@А:!/

_output_shapes	
:А:.0*
(
_output_shapes
:АА:!1

_output_shapes	
:А:.2*
(
_output_shapes
:АА:!3

_output_shapes	
:А:.4*
(
_output_shapes
:АА:!5

_output_shapes	
:А:&6"
 
_output_shapes
:
АА:!7

_output_shapes	
:А:%8!

_output_shapes
:	А+: 9

_output_shapes
:+::

_output_shapes
: 
ф
I
-__inference_max_pooling2d_layer_call_fn_17467

inputs
identity╬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_164742
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
П
`
B__inference_dropout_layer_call_and_return_conditional_losses_16481

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
я
№
A__inference_Conv11_layer_call_and_return_conditional_losses_16494

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ш
╒
*__inference_sequential_layer_call_fn_17370

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А+

unknown_14:+
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         +*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_166272
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         +2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ї
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_16779

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ц
^
B__inference_flatten_layer_call_and_return_conditional_losses_16583

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ш
·
A__inference_Conv02_layer_call_and_return_conditional_losses_17438

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ї
¤
A__inference_Conv12_layer_call_and_return_conditional_losses_16511

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         		А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         		А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         		А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         		А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs"иL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╗
serving_defaultз
M
Conv01_input=
serving_default_Conv01_input:0         :
Output0
StatefulPartitionedCall:0         +tensorflow/serving/predict:рШ
П
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
+ь&call_and_return_all_conditional_losses
э_default_save_signature
ю__call__"
_tf_keras_sequential
╜

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
+я&call_and_return_all_conditional_losses
Ё__call__"
_tf_keras_layer
╜

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
+ё&call_and_return_all_conditional_losses
Є__call__"
_tf_keras_layer
з
#	variables
$regularization_losses
%trainable_variables
&	keras_api
+є&call_and_return_all_conditional_losses
Ї__call__"
_tf_keras_layer
з
'	variables
(regularization_losses
)trainable_variables
*	keras_api
+ї&call_and_return_all_conditional_losses
Ў__call__"
_tf_keras_layer
╜

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
+ў&call_and_return_all_conditional_losses
°__call__"
_tf_keras_layer
╜

1kernel
2bias
3	variables
4regularization_losses
5trainable_variables
6	keras_api
+∙&call_and_return_all_conditional_losses
·__call__"
_tf_keras_layer
з
7	variables
8regularization_losses
9trainable_variables
:	keras_api
+√&call_and_return_all_conditional_losses
№__call__"
_tf_keras_layer
з
;	variables
<regularization_losses
=trainable_variables
>	keras_api
+¤&call_and_return_all_conditional_losses
■__call__"
_tf_keras_layer
╜

?kernel
@bias
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
+ &call_and_return_all_conditional_losses
А__call__"
_tf_keras_layer
╜

Ekernel
Fbias
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
+Б&call_and_return_all_conditional_losses
В__call__"
_tf_keras_layer
з
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
+Г&call_and_return_all_conditional_losses
Д__call__"
_tf_keras_layer
з
O	variables
Pregularization_losses
Qtrainable_variables
R	keras_api
+Е&call_and_return_all_conditional_losses
Ж__call__"
_tf_keras_layer
з
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
+З&call_and_return_all_conditional_losses
И__call__"
_tf_keras_layer
╜

Wkernel
Xbias
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
+Й&call_and_return_all_conditional_losses
К__call__"
_tf_keras_layer
з
]	variables
^regularization_losses
_trainable_variables
`	keras_api
+Л&call_and_return_all_conditional_losses
М__call__"
_tf_keras_layer
╜

akernel
bbias
c	variables
dregularization_losses
etrainable_variables
f	keras_api
+Н&call_and_return_all_conditional_losses
О__call__"
_tf_keras_layer
У
giter

hbeta_1

ibeta_2
	jdecay
klearning_ratem╠m═m╬m╧+m╨,m╤1m╥2m╙?m╘@m╒Em╓Fm╫Wm╪Xm┘am┌bm█v▄v▌v▐v▀+vр,vс1vт2vу?vф@vхEvцFvчWvшXvщavъbvы"
	optimizer
Ц
0
1
2
3
+4
,5
16
27
?8
@9
E10
F11
W12
X13
a14
b15"
trackable_list_wrapper
 "
trackable_list_wrapper
Ц
0
1
2
3
+4
,5
16
27
?8
@9
E10
F11
W12
X13
a14
b15"
trackable_list_wrapper
╬
	variables

llayers
mlayer_regularization_losses
nnon_trainable_variables
ometrics
regularization_losses
player_metrics
trainable_variables
ю__call__
э_default_save_signature
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
-
Пserving_default"
signature_map
':%@2Conv01/kernel
:@2Conv01/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
	variables

qlayers
rlayer_regularization_losses
snon_trainable_variables
tmetrics
regularization_losses
ulayer_metrics
trainable_variables
Ё__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
':%@@2Conv02/kernel
:@2Conv02/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
	variables

vlayers
wlayer_regularization_losses
xnon_trainable_variables
ymetrics
 regularization_losses
zlayer_metrics
!trainable_variables
Є__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
#	variables

{layers
|layer_regularization_losses
}non_trainable_variables
~metrics
$regularization_losses
layer_metrics
%trainable_variables
Ї__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
'	variables
Аlayers
 Бlayer_regularization_losses
Вnon_trainable_variables
Гmetrics
(regularization_losses
Дlayer_metrics
)trainable_variables
Ў__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
(:&@А2Conv11/kernel
:А2Conv11/bias
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
╡
-	variables
Еlayers
 Жlayer_regularization_losses
Зnon_trainable_variables
Иmetrics
.regularization_losses
Йlayer_metrics
/trainable_variables
°__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
):'АА2Conv12/kernel
:А2Conv12/bias
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
╡
3	variables
Кlayers
 Лlayer_regularization_losses
Мnon_trainable_variables
Нmetrics
4regularization_losses
Оlayer_metrics
5trainable_variables
·__call__
+∙&call_and_return_all_conditional_losses
'∙"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
7	variables
Пlayers
 Рlayer_regularization_losses
Сnon_trainable_variables
Тmetrics
8regularization_losses
Уlayer_metrics
9trainable_variables
№__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
;	variables
Фlayers
 Хlayer_regularization_losses
Цnon_trainable_variables
Чmetrics
<regularization_losses
Шlayer_metrics
=trainable_variables
■__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
):'АА2Conv21/kernel
:А2Conv21/bias
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
╡
A	variables
Щlayers
 Ъlayer_regularization_losses
Ыnon_trainable_variables
Ьmetrics
Bregularization_losses
Эlayer_metrics
Ctrainable_variables
А__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
):'АА2Conv22/kernel
:А2Conv22/bias
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
╡
G	variables
Юlayers
 Яlayer_regularization_losses
аnon_trainable_variables
бmetrics
Hregularization_losses
вlayer_metrics
Itrainable_variables
В__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
K	variables
гlayers
 дlayer_regularization_losses
еnon_trainable_variables
жmetrics
Lregularization_losses
зlayer_metrics
Mtrainable_variables
Д__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
O	variables
иlayers
 йlayer_regularization_losses
кnon_trainable_variables
лmetrics
Pregularization_losses
мlayer_metrics
Qtrainable_variables
Ж__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
S	variables
нlayers
 оlayer_regularization_losses
пnon_trainable_variables
░metrics
Tregularization_losses
▒layer_metrics
Utrainable_variables
И__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
!:
АА2Dense1/kernel
:А2Dense1/bias
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
╡
Y	variables
▓layers
 │layer_regularization_losses
┤non_trainable_variables
╡metrics
Zregularization_losses
╢layer_metrics
[trainable_variables
К__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
]	variables
╖layers
 ╕layer_regularization_losses
╣non_trainable_variables
║metrics
^regularization_losses
╗layer_metrics
_trainable_variables
М__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
 :	А+2Output/kernel
:+2Output/bias
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
╡
c	variables
╝layers
 ╜layer_regularization_losses
╛non_trainable_variables
┐metrics
dregularization_losses
└layer_metrics
etrainable_variables
О__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
Ц
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
┴0
┬1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

├total

─count
┼	variables
╞	keras_api"
_tf_keras_metric
c

╟total

╚count
╔
_fn_kwargs
╩	variables
╦	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
├0
─1"
trackable_list_wrapper
.
┼	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
╟0
╚1"
trackable_list_wrapper
.
╩	variables"
_generic_user_object
,:*@2Adam/Conv01/kernel/m
:@2Adam/Conv01/bias/m
,:*@@2Adam/Conv02/kernel/m
:@2Adam/Conv02/bias/m
-:+@А2Adam/Conv11/kernel/m
:А2Adam/Conv11/bias/m
.:,АА2Adam/Conv12/kernel/m
:А2Adam/Conv12/bias/m
.:,АА2Adam/Conv21/kernel/m
:А2Adam/Conv21/bias/m
.:,АА2Adam/Conv22/kernel/m
:А2Adam/Conv22/bias/m
&:$
АА2Adam/Dense1/kernel/m
:А2Adam/Dense1/bias/m
%:#	А+2Adam/Output/kernel/m
:+2Adam/Output/bias/m
,:*@2Adam/Conv01/kernel/v
:@2Adam/Conv01/bias/v
,:*@@2Adam/Conv02/kernel/v
:@2Adam/Conv02/bias/v
-:+@А2Adam/Conv11/kernel/v
:А2Adam/Conv11/bias/v
.:,АА2Adam/Conv12/kernel/v
:А2Adam/Conv12/bias/v
.:,АА2Adam/Conv21/kernel/v
:А2Adam/Conv21/bias/v
.:,АА2Adam/Conv22/kernel/v
:А2Adam/Conv22/bias/v
&:$
АА2Adam/Dense1/kernel/v
:А2Adam/Dense1/bias/v
%:#	А+2Adam/Output/kernel/v
:+2Adam/Output/bias/v
т2▀
E__inference_sequential_layer_call_and_return_conditional_losses_17236
E__inference_sequential_layer_call_and_return_conditional_losses_17333
E__inference_sequential_layer_call_and_return_conditional_losses_17070
E__inference_sequential_layer_call_and_return_conditional_losses_17122└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╨B═
 __inference__wrapped_model_16363Conv01_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ў2є
*__inference_sequential_layer_call_fn_16662
*__inference_sequential_layer_call_fn_17370
*__inference_sequential_layer_call_fn_17407
*__inference_sequential_layer_call_fn_17018└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ы2ш
A__inference_Conv01_layer_call_and_return_conditional_losses_17418в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨2═
&__inference_Conv01_layer_call_fn_17427в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ы2ш
A__inference_Conv02_layer_call_and_return_conditional_losses_17438в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨2═
&__inference_Conv02_layer_call_fn_17447в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╝2╣
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_17452
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_17457в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ж2Г
-__inference_max_pooling2d_layer_call_fn_17462
-__inference_max_pooling2d_layer_call_fn_17467в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┬2┐
B__inference_dropout_layer_call_and_return_conditional_losses_17472
B__inference_dropout_layer_call_and_return_conditional_losses_17484┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
М2Й
'__inference_dropout_layer_call_fn_17489
'__inference_dropout_layer_call_fn_17494┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ы2ш
A__inference_Conv11_layer_call_and_return_conditional_losses_17505в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨2═
&__inference_Conv11_layer_call_fn_17514в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ы2ш
A__inference_Conv12_layer_call_and_return_conditional_losses_17525в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨2═
&__inference_Conv12_layer_call_fn_17534в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
└2╜
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17539
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17544в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
К2З
/__inference_max_pooling2d_1_layer_call_fn_17549
/__inference_max_pooling2d_1_layer_call_fn_17554в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╞2├
D__inference_dropout_1_layer_call_and_return_conditional_losses_17559
D__inference_dropout_1_layer_call_and_return_conditional_losses_17571┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Р2Н
)__inference_dropout_1_layer_call_fn_17576
)__inference_dropout_1_layer_call_fn_17581┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ы2ш
A__inference_Conv21_layer_call_and_return_conditional_losses_17592в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨2═
&__inference_Conv21_layer_call_fn_17601в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ы2ш
A__inference_Conv22_layer_call_and_return_conditional_losses_17612в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨2═
&__inference_Conv22_layer_call_fn_17621в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
└2╜
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17626
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17631в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
К2З
/__inference_max_pooling2d_2_layer_call_fn_17636
/__inference_max_pooling2d_2_layer_call_fn_17641в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╞2├
D__inference_dropout_2_layer_call_and_return_conditional_losses_17646
D__inference_dropout_2_layer_call_and_return_conditional_losses_17658┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Р2Н
)__inference_dropout_2_layer_call_fn_17663
)__inference_dropout_2_layer_call_fn_17668┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ь2щ
B__inference_flatten_layer_call_and_return_conditional_losses_17674в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤2╬
'__inference_flatten_layer_call_fn_17679в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ы2ш
A__inference_Dense1_layer_call_and_return_conditional_losses_17690в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨2═
&__inference_Dense1_layer_call_fn_17699в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╞2├
D__inference_dropout_3_layer_call_and_return_conditional_losses_17704
D__inference_dropout_3_layer_call_and_return_conditional_losses_17716┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Р2Н
)__inference_dropout_3_layer_call_fn_17721
)__inference_dropout_3_layer_call_fn_17726┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ы2ш
A__inference_Output_layer_call_and_return_conditional_losses_17737в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨2═
&__inference_Output_layer_call_fn_17746в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╧B╠
#__inference_signature_wrapper_17167Conv01_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 ▒
A__inference_Conv01_layer_call_and_return_conditional_losses_17418l7в4
-в*
(К%
inputs         
к "-в*
#К 
0         @
Ъ Й
&__inference_Conv01_layer_call_fn_17427_7в4
-в*
(К%
inputs         
к " К         @▒
A__inference_Conv02_layer_call_and_return_conditional_losses_17438l7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ Й
&__inference_Conv02_layer_call_fn_17447_7в4
-в*
(К%
inputs         @
к " К         @▓
A__inference_Conv11_layer_call_and_return_conditional_losses_17505m+,7в4
-в*
(К%
inputs         @
к ".в+
$К!
0         А
Ъ К
&__inference_Conv11_layer_call_fn_17514`+,7в4
-в*
(К%
inputs         @
к "!К         А│
A__inference_Conv12_layer_call_and_return_conditional_losses_17525n128в5
.в+
)К&
inputs         А
к ".в+
$К!
0         		А
Ъ Л
&__inference_Conv12_layer_call_fn_17534a128в5
.в+
)К&
inputs         А
к "!К         		А│
A__inference_Conv21_layer_call_and_return_conditional_losses_17592n?@8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Л
&__inference_Conv21_layer_call_fn_17601a?@8в5
.в+
)К&
inputs         А
к "!К         А│
A__inference_Conv22_layer_call_and_return_conditional_losses_17612nEF8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Л
&__inference_Conv22_layer_call_fn_17621aEF8в5
.в+
)К&
inputs         А
к "!К         Аг
A__inference_Dense1_layer_call_and_return_conditional_losses_17690^WX0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ {
&__inference_Dense1_layer_call_fn_17699QWX0в-
&в#
!К
inputs         А
к "К         Ав
A__inference_Output_layer_call_and_return_conditional_losses_17737]ab0в-
&в#
!К
inputs         А
к "%в"
К
0         +
Ъ z
&__inference_Output_layer_call_fn_17746Pab0в-
&в#
!К
inputs         А
к "К         +з
 __inference__wrapped_model_16363В+,12?@EFWXab=в:
3в0
.К+
Conv01_input         
к "/к,
*
Output К
Output         +╢
D__inference_dropout_1_layer_call_and_return_conditional_losses_17559n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╢
D__inference_dropout_1_layer_call_and_return_conditional_losses_17571n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ О
)__inference_dropout_1_layer_call_fn_17576a<в9
2в/
)К&
inputs         А
p 
к "!К         АО
)__inference_dropout_1_layer_call_fn_17581a<в9
2в/
)К&
inputs         А
p
к "!К         А╢
D__inference_dropout_2_layer_call_and_return_conditional_losses_17646n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╢
D__inference_dropout_2_layer_call_and_return_conditional_losses_17658n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ О
)__inference_dropout_2_layer_call_fn_17663a<в9
2в/
)К&
inputs         А
p 
к "!К         АО
)__inference_dropout_2_layer_call_fn_17668a<в9
2в/
)К&
inputs         А
p
к "!К         Аж
D__inference_dropout_3_layer_call_and_return_conditional_losses_17704^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ ж
D__inference_dropout_3_layer_call_and_return_conditional_losses_17716^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ ~
)__inference_dropout_3_layer_call_fn_17721Q4в1
*в'
!К
inputs         А
p 
к "К         А~
)__inference_dropout_3_layer_call_fn_17726Q4в1
*в'
!К
inputs         А
p
к "К         А▓
B__inference_dropout_layer_call_and_return_conditional_losses_17472l;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ ▓
B__inference_dropout_layer_call_and_return_conditional_losses_17484l;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ К
'__inference_dropout_layer_call_fn_17489_;в8
1в.
(К%
inputs         @
p 
к " К         @К
'__inference_dropout_layer_call_fn_17494_;в8
1в.
(К%
inputs         @
p
к " К         @и
B__inference_flatten_layer_call_and_return_conditional_losses_17674b8в5
.в+
)К&
inputs         А
к "&в#
К
0         А
Ъ А
'__inference_flatten_layer_call_fn_17679U8в5
.в+
)К&
inputs         А
к "К         Аэ
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17539ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╕
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17544j8в5
.в+
)К&
inputs         		А
к ".в+
$К!
0         А
Ъ ┼
/__inference_max_pooling2d_1_layer_call_fn_17549СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Р
/__inference_max_pooling2d_1_layer_call_fn_17554]8в5
.в+
)К&
inputs         		А
к "!К         Аэ
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17626ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╕
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17631j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ ┼
/__inference_max_pooling2d_2_layer_call_fn_17636СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Р
/__inference_max_pooling2d_2_layer_call_fn_17641]8в5
.в+
)К&
inputs         А
к "!К         Аы
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_17452ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┤
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_17457h7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ ├
-__inference_max_pooling2d_layer_call_fn_17462СRвO
HвE
CК@
inputs4                                    
к ";К84                                    М
-__inference_max_pooling2d_layer_call_fn_17467[7в4
-в*
(К%
inputs         @
к " К         @╩
E__inference_sequential_layer_call_and_return_conditional_losses_17070А+,12?@EFWXabEвB
;в8
.К+
Conv01_input         
p 

 
к "%в"
К
0         +
Ъ ╩
E__inference_sequential_layer_call_and_return_conditional_losses_17122А+,12?@EFWXabEвB
;в8
.К+
Conv01_input         
p

 
к "%в"
К
0         +
Ъ ├
E__inference_sequential_layer_call_and_return_conditional_losses_17236z+,12?@EFWXab?в<
5в2
(К%
inputs         
p 

 
к "%в"
К
0         +
Ъ ├
E__inference_sequential_layer_call_and_return_conditional_losses_17333z+,12?@EFWXab?в<
5в2
(К%
inputs         
p

 
к "%в"
К
0         +
Ъ б
*__inference_sequential_layer_call_fn_16662s+,12?@EFWXabEвB
;в8
.К+
Conv01_input         
p 

 
к "К         +б
*__inference_sequential_layer_call_fn_17018s+,12?@EFWXabEвB
;в8
.К+
Conv01_input         
p

 
к "К         +Ы
*__inference_sequential_layer_call_fn_17370m+,12?@EFWXab?в<
5в2
(К%
inputs         
p 

 
к "К         +Ы
*__inference_sequential_layer_call_fn_17407m+,12?@EFWXab?в<
5в2
(К%
inputs         
p

 
к "К         +║
#__inference_signature_wrapper_17167Т+,12?@EFWXabMвJ
в 
Cк@
>
Conv01_input.К+
Conv01_input         "/к,
*
Output К
Output         +