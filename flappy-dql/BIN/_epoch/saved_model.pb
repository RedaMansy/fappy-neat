��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring �
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.02v2.6.0-rc2-32-g919f693420e8Ɋ
�
dqn_72/dense_152/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_namedqn_72/dense_152/kernel
�
+dqn_72/dense_152/kernel/Read/ReadVariableOpReadVariableOpdqn_72/dense_152/kernel*
_output_shapes
:	�*
dtype0
�
dqn_72/dense_152/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_namedqn_72/dense_152/bias
|
)dqn_72/dense_152/bias/Read/ReadVariableOpReadVariableOpdqn_72/dense_152/bias*
_output_shapes	
:�*
dtype0
�
dqn_72/dense_153/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_namedqn_72/dense_153/kernel
�
+dqn_72/dense_153/kernel/Read/ReadVariableOpReadVariableOpdqn_72/dense_153/kernel*
_output_shapes
:	�*
dtype0
�
dqn_72/dense_153/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namedqn_72/dense_153/bias
{
)dqn_72/dense_153/bias/Read/ReadVariableOpReadVariableOpdqn_72/dense_153/bias*
_output_shapes
:*
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
�
Adam/dqn_72/dense_152/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*/
shared_name Adam/dqn_72/dense_152/kernel/m
�
2Adam/dqn_72/dense_152/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dqn_72/dense_152/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/dqn_72/dense_152/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_nameAdam/dqn_72/dense_152/bias/m
�
0Adam/dqn_72/dense_152/bias/m/Read/ReadVariableOpReadVariableOpAdam/dqn_72/dense_152/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dqn_72/dense_153/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*/
shared_name Adam/dqn_72/dense_153/kernel/m
�
2Adam/dqn_72/dense_153/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dqn_72/dense_153/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/dqn_72/dense_153/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/dqn_72/dense_153/bias/m
�
0Adam/dqn_72/dense_153/bias/m/Read/ReadVariableOpReadVariableOpAdam/dqn_72/dense_153/bias/m*
_output_shapes
:*
dtype0
�
Adam/dqn_72/dense_152/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*/
shared_name Adam/dqn_72/dense_152/kernel/v
�
2Adam/dqn_72/dense_152/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dqn_72/dense_152/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/dqn_72/dense_152/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_nameAdam/dqn_72/dense_152/bias/v
�
0Adam/dqn_72/dense_152/bias/v/Read/ReadVariableOpReadVariableOpAdam/dqn_72/dense_152/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dqn_72/dense_153/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*/
shared_name Adam/dqn_72/dense_153/kernel/v
�
2Adam/dqn_72/dense_153/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dqn_72/dense_153/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/dqn_72/dense_153/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/dqn_72/dense_153/bias/v
�
0Adam/dqn_72/dense_153/bias/v/Read/ReadVariableOpReadVariableOpAdam/dqn_72/dense_153/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
d0
d1
q_values
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
R

	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
�
iter

beta_1

beta_2
	decay
learning_ratem3m4m5m6v7v8v9v:

0
1
2
3

0
1
2
3
 
�
non_trainable_variables
	variables
trainable_variables
 layer_regularization_losses
!layer_metrics
"metrics
regularization_losses

#layers
 
 
 
 
�
$non_trainable_variables

	variables
trainable_variables
%layer_regularization_losses
&layer_metrics
'metrics
regularization_losses

(layers
QO
VARIABLE_VALUEdqn_72/dense_152/kernel$d1/kernel/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEdqn_72/dense_152/bias"d1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
)non_trainable_variables
	variables
trainable_variables
*layer_regularization_losses
+layer_metrics
,metrics
regularization_losses

-layers
WU
VARIABLE_VALUEdqn_72/dense_153/kernel*q_values/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdqn_72/dense_153/bias(q_values/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
.non_trainable_variables
	variables
trainable_variables
/layer_regularization_losses
0layer_metrics
1metrics
regularization_losses

2layers
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
 
 
 
 

0
1
2
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
tr
VARIABLE_VALUEAdam/dqn_72/dense_152/kernel/m@d1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/dqn_72/dense_152/bias/m>d1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dqn_72/dense_153/kernel/mFq_values/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dqn_72/dense_153/bias/mDq_values/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/dqn_72/dense_152/kernel/v@d1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/dqn_72/dense_152/bias/v>d1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dqn_72/dense_153/kernel/vFq_values/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dqn_72/dense_153/bias/vDq_values/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dqn_72/dense_152/kerneldqn_72/dense_152/biasdqn_72/dense_153/kerneldqn_72/dense_153/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_77702715
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+dqn_72/dense_152/kernel/Read/ReadVariableOp)dqn_72/dense_152/bias/Read/ReadVariableOp+dqn_72/dense_153/kernel/Read/ReadVariableOp)dqn_72/dense_153/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp2Adam/dqn_72/dense_152/kernel/m/Read/ReadVariableOp0Adam/dqn_72/dense_152/bias/m/Read/ReadVariableOp2Adam/dqn_72/dense_153/kernel/m/Read/ReadVariableOp0Adam/dqn_72/dense_153/bias/m/Read/ReadVariableOp2Adam/dqn_72/dense_152/kernel/v/Read/ReadVariableOp0Adam/dqn_72/dense_152/bias/v/Read/ReadVariableOp2Adam/dqn_72/dense_153/kernel/v/Read/ReadVariableOp0Adam/dqn_72/dense_153/bias/v/Read/ReadVariableOpConst*
Tin
2	*
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
GPU 2J 8� **
f%R#
!__inference__traced_save_77702903
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedqn_72/dense_152/kerneldqn_72/dense_152/biasdqn_72/dense_153/kerneldqn_72/dense_153/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateAdam/dqn_72/dense_152/kernel/mAdam/dqn_72/dense_152/bias/mAdam/dqn_72/dense_153/kernel/mAdam/dqn_72/dense_153/bias/mAdam/dqn_72/dense_152/kernel/vAdam/dqn_72/dense_152/bias/vAdam/dqn_72/dense_153/kernel/vAdam/dqn_72/dense_153/bias/v*
Tin
2*
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
GPU 2J 8� *-
f(R&
$__inference__traced_restore_77702964��
�
�
D__inference_dqn_72_layer_call_and_return_conditional_losses_77702734	
state;
(dense_152_matmul_readvariableop_resource:	�8
)dense_152_biasadd_readvariableop_resource:	�;
(dense_153_matmul_readvariableop_resource:	�7
)dense_153_biasadd_readvariableop_resource:
identity�� dense_152/BiasAdd/ReadVariableOp�dense_152/MatMul/ReadVariableOp� dense_153/BiasAdd/ReadVariableOp�dense_153/MatMul/ReadVariableOpu
flatten_72/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2
flatten_72/Const�
flatten_72/ReshapeReshapestateflatten_72/Const:output:0*
T0*'
_output_shapes
:���������2
flatten_72/Reshape�
dense_152/MatMul/ReadVariableOpReadVariableOp(dense_152_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02!
dense_152/MatMul/ReadVariableOp�
dense_152/MatMulMatMulflatten_72/Reshape:output:0'dense_152/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_152/MatMul�
 dense_152/BiasAdd/ReadVariableOpReadVariableOp)dense_152_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 dense_152/BiasAdd/ReadVariableOp�
dense_152/BiasAddBiasAdddense_152/MatMul:product:0(dense_152/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_152/BiasAddw
dense_152/ReluReludense_152/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_152/Relu�
dense_153/MatMul/ReadVariableOpReadVariableOp(dense_153_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02!
dense_153/MatMul/ReadVariableOp�
dense_153/MatMulMatMuldense_152/Relu:activations:0'dense_153/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_153/MatMul�
 dense_153/BiasAdd/ReadVariableOpReadVariableOp)dense_153_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_153/BiasAdd/ReadVariableOp�
dense_153/BiasAddBiasAdddense_153/MatMul:product:0(dense_153/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_153/BiasAddu
IdentityIdentitydense_153/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_152/BiasAdd/ReadVariableOp ^dense_152/MatMul/ReadVariableOp!^dense_153/BiasAdd/ReadVariableOp ^dense_153/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2D
 dense_152/BiasAdd/ReadVariableOp dense_152/BiasAdd/ReadVariableOp2B
dense_152/MatMul/ReadVariableOpdense_152/MatMul/ReadVariableOp2D
 dense_153/BiasAdd/ReadVariableOp dense_153/BiasAdd/ReadVariableOp2B
dense_153/MatMul/ReadVariableOpdense_153/MatMul/ReadVariableOp:N J
'
_output_shapes
:���������

_user_specified_namestate
�
d
H__inference_flatten_72_layer_call_and_return_conditional_losses_77702593

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
H__inference_flatten_72_layer_call_and_return_conditional_losses_77702785

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_dense_153_layer_call_fn_77702829

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_153_layer_call_and_return_conditional_losses_777026222
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_77702715
input_1
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_777025802
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
#__inference__wrapped_model_77702580
input_1B
/dqn_72_dense_152_matmul_readvariableop_resource:	�?
0dqn_72_dense_152_biasadd_readvariableop_resource:	�B
/dqn_72_dense_153_matmul_readvariableop_resource:	�>
0dqn_72_dense_153_biasadd_readvariableop_resource:
identity��'dqn_72/dense_152/BiasAdd/ReadVariableOp�&dqn_72/dense_152/MatMul/ReadVariableOp�'dqn_72/dense_153/BiasAdd/ReadVariableOp�&dqn_72/dense_153/MatMul/ReadVariableOp�
dqn_72/flatten_72/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2
dqn_72/flatten_72/Const�
dqn_72/flatten_72/ReshapeReshapeinput_1 dqn_72/flatten_72/Const:output:0*
T0*'
_output_shapes
:���������2
dqn_72/flatten_72/Reshape�
&dqn_72/dense_152/MatMul/ReadVariableOpReadVariableOp/dqn_72_dense_152_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02(
&dqn_72/dense_152/MatMul/ReadVariableOp�
dqn_72/dense_152/MatMulMatMul"dqn_72/flatten_72/Reshape:output:0.dqn_72/dense_152/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dqn_72/dense_152/MatMul�
'dqn_72/dense_152/BiasAdd/ReadVariableOpReadVariableOp0dqn_72_dense_152_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02)
'dqn_72/dense_152/BiasAdd/ReadVariableOp�
dqn_72/dense_152/BiasAddBiasAdd!dqn_72/dense_152/MatMul:product:0/dqn_72/dense_152/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dqn_72/dense_152/BiasAdd�
dqn_72/dense_152/ReluRelu!dqn_72/dense_152/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dqn_72/dense_152/Relu�
&dqn_72/dense_153/MatMul/ReadVariableOpReadVariableOp/dqn_72_dense_153_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02(
&dqn_72/dense_153/MatMul/ReadVariableOp�
dqn_72/dense_153/MatMulMatMul#dqn_72/dense_152/Relu:activations:0.dqn_72/dense_153/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dqn_72/dense_153/MatMul�
'dqn_72/dense_153/BiasAdd/ReadVariableOpReadVariableOp0dqn_72_dense_153_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'dqn_72/dense_153/BiasAdd/ReadVariableOp�
dqn_72/dense_153/BiasAddBiasAdd!dqn_72/dense_153/MatMul:product:0/dqn_72/dense_153/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dqn_72/dense_153/BiasAdd|
IdentityIdentity!dqn_72/dense_153/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp(^dqn_72/dense_152/BiasAdd/ReadVariableOp'^dqn_72/dense_152/MatMul/ReadVariableOp(^dqn_72/dense_153/BiasAdd/ReadVariableOp'^dqn_72/dense_153/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2R
'dqn_72/dense_152/BiasAdd/ReadVariableOp'dqn_72/dense_152/BiasAdd/ReadVariableOp2P
&dqn_72/dense_152/MatMul/ReadVariableOp&dqn_72/dense_152/MatMul/ReadVariableOp2R
'dqn_72/dense_153/BiasAdd/ReadVariableOp'dqn_72/dense_153/BiasAdd/ReadVariableOp2P
&dqn_72/dense_153/MatMul/ReadVariableOp&dqn_72/dense_153/MatMul/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
G__inference_dense_152_layer_call_and_return_conditional_losses_77702606

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
I
-__inference_flatten_72_layer_call_fn_77702790

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_72_layer_call_and_return_conditional_losses_777025932
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_dense_152_layer_call_fn_77702810

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_152_layer_call_and_return_conditional_losses_777026062
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
G__inference_dense_153_layer_call_and_return_conditional_losses_77702820

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_dense_152_layer_call_and_return_conditional_losses_77702801

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
G__inference_dense_153_layer_call_and_return_conditional_losses_77702622

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�L
�
$__inference__traced_restore_77702964
file_prefix;
(assignvariableop_dqn_72_dense_152_kernel:	�7
(assignvariableop_1_dqn_72_dense_152_bias:	�=
*assignvariableop_2_dqn_72_dense_153_kernel:	�6
(assignvariableop_3_dqn_72_dense_153_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: D
1assignvariableop_9_adam_dqn_72_dense_152_kernel_m:	�?
0assignvariableop_10_adam_dqn_72_dense_152_bias_m:	�E
2assignvariableop_11_adam_dqn_72_dense_153_kernel_m:	�>
0assignvariableop_12_adam_dqn_72_dense_153_bias_m:E
2assignvariableop_13_adam_dqn_72_dense_152_kernel_v:	�?
0assignvariableop_14_adam_dqn_72_dense_152_bias_v:	�E
2assignvariableop_15_adam_dqn_72_dense_153_kernel_v:	�>
0assignvariableop_16_adam_dqn_72_dense_153_bias_v:
identity_18��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B$d1/kernel/.ATTRIBUTES/VARIABLE_VALUEB"d1/bias/.ATTRIBUTES/VARIABLE_VALUEB*q_values/kernel/.ATTRIBUTES/VARIABLE_VALUEB(q_values/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB@d1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB>d1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFq_values/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDq_values/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB@d1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB>d1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFq_values/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDq_values/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp(assignvariableop_dqn_72_dense_152_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp(assignvariableop_1_dqn_72_dense_152_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp*assignvariableop_2_dqn_72_dense_153_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp(assignvariableop_3_dqn_72_dense_153_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp1assignvariableop_9_adam_dqn_72_dense_152_kernel_mIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp0assignvariableop_10_adam_dqn_72_dense_152_bias_mIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp2assignvariableop_11_adam_dqn_72_dense_153_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp0assignvariableop_12_adam_dqn_72_dense_153_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp2assignvariableop_13_adam_dqn_72_dense_152_kernel_vIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_adam_dqn_72_dense_152_bias_vIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp2assignvariableop_15_adam_dqn_72_dense_153_kernel_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp0assignvariableop_16_adam_dqn_72_dense_153_bias_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_169
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_17Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_17f
Identity_18IdentityIdentity_17:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_18�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_18Identity_18:output:0*7
_input_shapes&
$: : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�.
�
!__inference__traced_save_77702903
file_prefix6
2savev2_dqn_72_dense_152_kernel_read_readvariableop4
0savev2_dqn_72_dense_152_bias_read_readvariableop6
2savev2_dqn_72_dense_153_kernel_read_readvariableop4
0savev2_dqn_72_dense_153_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop=
9savev2_adam_dqn_72_dense_152_kernel_m_read_readvariableop;
7savev2_adam_dqn_72_dense_152_bias_m_read_readvariableop=
9savev2_adam_dqn_72_dense_153_kernel_m_read_readvariableop;
7savev2_adam_dqn_72_dense_153_bias_m_read_readvariableop=
9savev2_adam_dqn_72_dense_152_kernel_v_read_readvariableop;
7savev2_adam_dqn_72_dense_152_bias_v_read_readvariableop=
9savev2_adam_dqn_72_dense_153_kernel_v_read_readvariableop;
7savev2_adam_dqn_72_dense_153_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B$d1/kernel/.ATTRIBUTES/VARIABLE_VALUEB"d1/bias/.ATTRIBUTES/VARIABLE_VALUEB*q_values/kernel/.ATTRIBUTES/VARIABLE_VALUEB(q_values/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB@d1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB>d1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFq_values/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDq_values/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB@d1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB>d1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFq_values/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDq_values/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_dqn_72_dense_152_kernel_read_readvariableop0savev2_dqn_72_dense_152_bias_read_readvariableop2savev2_dqn_72_dense_153_kernel_read_readvariableop0savev2_dqn_72_dense_153_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop9savev2_adam_dqn_72_dense_152_kernel_m_read_readvariableop7savev2_adam_dqn_72_dense_152_bias_m_read_readvariableop9savev2_adam_dqn_72_dense_153_kernel_m_read_readvariableop7savev2_adam_dqn_72_dense_153_bias_m_read_readvariableop9savev2_adam_dqn_72_dense_152_kernel_v_read_readvariableop7savev2_adam_dqn_72_dense_152_bias_v_read_readvariableop9savev2_adam_dqn_72_dense_153_kernel_v_read_readvariableop7savev2_adam_dqn_72_dense_153_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 * 
dtypes
2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
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

identity_1Identity_1:output:0*�
_input_shapesy
w: :	�:�:	�:: : : : : :	�:�:	�::	�:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :%
!

_output_shapes
:	�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::%!

_output_shapes
:	�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: 
�
�
D__inference_dqn_72_layer_call_and_return_conditional_losses_77702753
input_1;
(dense_152_matmul_readvariableop_resource:	�8
)dense_152_biasadd_readvariableop_resource:	�;
(dense_153_matmul_readvariableop_resource:	�7
)dense_153_biasadd_readvariableop_resource:
identity�� dense_152/BiasAdd/ReadVariableOp�dense_152/MatMul/ReadVariableOp� dense_153/BiasAdd/ReadVariableOp�dense_153/MatMul/ReadVariableOpu
flatten_72/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2
flatten_72/Const�
flatten_72/ReshapeReshapeinput_1flatten_72/Const:output:0*
T0*'
_output_shapes
:���������2
flatten_72/Reshape�
dense_152/MatMul/ReadVariableOpReadVariableOp(dense_152_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02!
dense_152/MatMul/ReadVariableOp�
dense_152/MatMulMatMulflatten_72/Reshape:output:0'dense_152/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_152/MatMul�
 dense_152/BiasAdd/ReadVariableOpReadVariableOp)dense_152_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 dense_152/BiasAdd/ReadVariableOp�
dense_152/BiasAddBiasAdddense_152/MatMul:product:0(dense_152/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_152/BiasAddw
dense_152/ReluReludense_152/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_152/Relu�
dense_153/MatMul/ReadVariableOpReadVariableOp(dense_153_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02!
dense_153/MatMul/ReadVariableOp�
dense_153/MatMulMatMuldense_152/Relu:activations:0'dense_153/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_153/MatMul�
 dense_153/BiasAdd/ReadVariableOpReadVariableOp)dense_153_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_153/BiasAdd/ReadVariableOp�
dense_153/BiasAddBiasAdddense_153/MatMul:product:0(dense_153/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_153/BiasAddu
IdentityIdentitydense_153/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_152/BiasAdd/ReadVariableOp ^dense_152/MatMul/ReadVariableOp!^dense_153/BiasAdd/ReadVariableOp ^dense_153/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2D
 dense_152/BiasAdd/ReadVariableOp dense_152/BiasAdd/ReadVariableOp2B
dense_152/MatMul/ReadVariableOpdense_152/MatMul/ReadVariableOp2D
 dense_153/BiasAdd/ReadVariableOp dense_153/BiasAdd/ReadVariableOp2B
dense_153/MatMul/ReadVariableOpdense_153/MatMul/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
D__inference_dqn_72_layer_call_and_return_conditional_losses_77702629	
state%
dense_152_77702607:	�!
dense_152_77702609:	�%
dense_153_77702623:	� 
dense_153_77702625:
identity��!dense_152/StatefulPartitionedCall�!dense_153/StatefulPartitionedCall�
flatten_72/PartitionedCallPartitionedCallstate*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_72_layer_call_and_return_conditional_losses_777025932
flatten_72/PartitionedCall�
!dense_152/StatefulPartitionedCallStatefulPartitionedCall#flatten_72/PartitionedCall:output:0dense_152_77702607dense_152_77702609*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_152_layer_call_and_return_conditional_losses_777026062#
!dense_152/StatefulPartitionedCall�
!dense_153/StatefulPartitionedCallStatefulPartitionedCall*dense_152/StatefulPartitionedCall:output:0dense_153_77702623dense_153_77702625*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_153_layer_call_and_return_conditional_losses_777026222#
!dense_153/StatefulPartitionedCall�
IdentityIdentity*dense_153/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp"^dense_152/StatefulPartitionedCall"^dense_153/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2F
!dense_152/StatefulPartitionedCall!dense_152/StatefulPartitionedCall2F
!dense_153/StatefulPartitionedCall!dense_153/StatefulPartitionedCall:N J
'
_output_shapes
:���������

_user_specified_namestate
�
�
)__inference_dqn_72_layer_call_fn_77702766
input_1
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dqn_72_layer_call_and_return_conditional_losses_777026292
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
)__inference_dqn_72_layer_call_fn_77702779	
state
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallstateunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dqn_72_layer_call_and_return_conditional_losses_777026292
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:���������

_user_specified_namestate"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:�@
�
d0
d1
q_values
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
*;&call_and_return_all_conditional_losses
<__call__
=_default_save_signature"
_tf_keras_model
�

	variables
trainable_variables
regularization_losses
	keras_api
*>&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*@&call_and_return_all_conditional_losses
A__call__"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*B&call_and_return_all_conditional_losses
C__call__"
_tf_keras_layer
�
iter

beta_1

beta_2
	decay
learning_ratem3m4m5m6v7v8v9v:"
	optimizer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables
	variables
trainable_variables
 layer_regularization_losses
!layer_metrics
"metrics
regularization_losses

#layers
<__call__
=_default_save_signature
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
,
Dserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
$non_trainable_variables

	variables
trainable_variables
%layer_regularization_losses
&layer_metrics
'metrics
regularization_losses

(layers
?__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
*:(	�2dqn_72/dense_152/kernel
$:"�2dqn_72/dense_152/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
)non_trainable_variables
	variables
trainable_variables
*layer_regularization_losses
+layer_metrics
,metrics
regularization_losses

-layers
A__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
*:(	�2dqn_72/dense_153/kernel
#:!2dqn_72/dense_153/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
.non_trainable_variables
	variables
trainable_variables
/layer_regularization_losses
0layer_metrics
1metrics
regularization_losses

2layers
C__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
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
/:-	�2Adam/dqn_72/dense_152/kernel/m
):'�2Adam/dqn_72/dense_152/bias/m
/:-	�2Adam/dqn_72/dense_153/kernel/m
(:&2Adam/dqn_72/dense_153/bias/m
/:-	�2Adam/dqn_72/dense_152/kernel/v
):'�2Adam/dqn_72/dense_152/bias/v
/:-	�2Adam/dqn_72/dense_153/kernel/v
(:&2Adam/dqn_72/dense_153/bias/v
�2�
D__inference_dqn_72_layer_call_and_return_conditional_losses_77702734
D__inference_dqn_72_layer_call_and_return_conditional_losses_77702753�
���
FullArgSpec
args�
jself
jstate
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dqn_72_layer_call_fn_77702766
)__inference_dqn_72_layer_call_fn_77702779�
���
FullArgSpec
args�
jself
jstate
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__wrapped_model_77702580input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_flatten_72_layer_call_and_return_conditional_losses_77702785�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_flatten_72_layer_call_fn_77702790�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_dense_152_layer_call_and_return_conditional_losses_77702801�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_dense_152_layer_call_fn_77702810�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_dense_153_layer_call_and_return_conditional_losses_77702820�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_dense_153_layer_call_fn_77702829�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_signature_wrapper_77702715input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
#__inference__wrapped_model_77702580m0�-
&�#
!�
input_1���������
� "3�0
.
output_1"�
output_1����������
G__inference_dense_152_layer_call_and_return_conditional_losses_77702801]/�,
%�"
 �
inputs���������
� "&�#
�
0����������
� �
,__inference_dense_152_layer_call_fn_77702810P/�,
%�"
 �
inputs���������
� "������������
G__inference_dense_153_layer_call_and_return_conditional_losses_77702820]0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� �
,__inference_dense_153_layer_call_fn_77702829P0�-
&�#
!�
inputs����������
� "�����������
D__inference_dqn_72_layer_call_and_return_conditional_losses_77702734].�+
$�!
�
state���������
� "%�"
�
0���������
� �
D__inference_dqn_72_layer_call_and_return_conditional_losses_77702753_0�-
&�#
!�
input_1���������
� "%�"
�
0���������
� 
)__inference_dqn_72_layer_call_fn_77702766R0�-
&�#
!�
input_1���������
� "����������}
)__inference_dqn_72_layer_call_fn_77702779P.�+
$�!
�
state���������
� "�����������
H__inference_flatten_72_layer_call_and_return_conditional_losses_77702785X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� |
-__inference_flatten_72_layer_call_fn_77702790K/�,
%�"
 �
inputs���������
� "�����������
&__inference_signature_wrapper_77702715x;�8
� 
1�.
,
input_1!�
input_1���������"3�0
.
output_1"�
output_1���������