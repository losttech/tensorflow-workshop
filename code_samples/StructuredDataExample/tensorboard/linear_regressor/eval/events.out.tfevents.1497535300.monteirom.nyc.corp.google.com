       £K"	   Ń¤PÖAbrain.Event:2ż»]Ż     «čM	gļŃ¤PÖA"ōŗ

global_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
loc:@global_step

global_step
VariableV2*
	container *
_class
loc:@global_step*
dtype0	*
_output_shapes
: *
shape: *
shared_name 
²
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_output_shapes
: *
_class
loc:@global_step
¶
enqueue_input/fifo_queueFIFOQueueV2*
	container *
_output_shapes
: *
shared_name * 
component_types
2		*
capacityč*
shapes
: : : : : : : : : 
^
enqueue_input/PlaceholderPlaceholder*
dtype0	*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_1Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_2Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_3Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_4Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_5Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_6Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_7Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_8Placeholder*
dtype0*
_output_shapes
:*
shape:

$enqueue_input/fifo_queue_EnqueueManyQueueEnqueueManyV2enqueue_input/fifo_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2enqueue_input/Placeholder_3enqueue_input/Placeholder_4enqueue_input/Placeholder_5enqueue_input/Placeholder_6enqueue_input/Placeholder_7enqueue_input/Placeholder_8*
Tcomponents
2		*

timeout_ms’’’’’’’’’
g
enqueue_input/fifo_queue_CloseQueueCloseV2enqueue_input/fifo_queue*
cancel_pending_enqueues( 
i
 enqueue_input/fifo_queue_Close_1QueueCloseV2enqueue_input/fifo_queue*
cancel_pending_enqueues(
^
enqueue_input/fifo_queue_SizeQueueSizeV2enqueue_input/fifo_queue*
_output_shapes
: 
U
enqueue_input/sub/yConst*
dtype0*
_output_shapes
: *
value	B : 
m
enqueue_input/subSubenqueue_input/fifo_queue_Sizeenqueue_input/sub/y*
T0*
_output_shapes
: 
Y
enqueue_input/Maximum/xConst*
dtype0*
_output_shapes
: *
value	B : 
m
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub*
T0*
_output_shapes
: 
a
enqueue_input/CastCastenqueue_input/Maximum*

SrcT0*
_output_shapes
: *

DstT0
X
enqueue_input/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *o:
b
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y*
T0*
_output_shapes
: 
Ö
Menqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsConst*
dtype0*
_output_shapes
: *Y
valuePBN BHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full
Ü
Henqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_fullScalarSummaryMenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsenqueue_input/mul*
T0*
_output_shapes
: 
Z
fifo_queue_DequeueUpTo/nConst*
dtype0*
_output_shapes
: *
value	B :
½
fifo_queue_DequeueUpToQueueDequeueUpToV2enqueue_input/fifo_queuefifo_queue_DequeueUpTo/n*
_output_shapes
:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*

timeout_ms’’’’’’’’’* 
component_types
2		
n
#linear/linear/height/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
Ŗ
linear/linear/height/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:6#linear/linear/height/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0
²
-linear/height/weight/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *.
_class$
" loc:@linear/height/weight/part_0
æ
linear/height/weight/part_0
VariableV2*
	container *.
_class$
" loc:@linear/height/weight/part_0*
dtype0*
_output_shapes

:*
shape
:*
shared_name 
ś
"linear/height/weight/part_0/AssignAssignlinear/height/weight/part_0-linear/height/weight/part_0/Initializer/zeros*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*.
_class$
" loc:@linear/height/weight/part_0
¢
 linear/height/weight/part_0/readIdentitylinear/height/weight/part_0*
T0*
_output_shapes

:*.
_class$
" loc:@linear/height/weight/part_0
k
linear/height/weightIdentity linear/height/weight/part_0/read*
T0*
_output_shapes

:
“
linear/linear/height/matmulMatMullinear/linear/height/ExpandDimslinear/height/weight*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
l
linear/linear/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   

linear/linear/ReshapeReshapelinear/linear/height/matmullinear/linear/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
r
'linear/linear/horsepower/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
²
#linear/linear/horsepower/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:3'linear/linear/horsepower/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0
ŗ
1linear/horsepower/weight/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *2
_class(
&$loc:@linear/horsepower/weight/part_0
Ē
linear/horsepower/weight/part_0
VariableV2*
	container *2
_class(
&$loc:@linear/horsepower/weight/part_0*
dtype0*
_output_shapes

:*
shape
:*
shared_name 

&linear/horsepower/weight/part_0/AssignAssignlinear/horsepower/weight/part_01linear/horsepower/weight/part_0/Initializer/zeros*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*2
_class(
&$loc:@linear/horsepower/weight/part_0
®
$linear/horsepower/weight/part_0/readIdentitylinear/horsepower/weight/part_0*
T0*
_output_shapes

:*2
_class(
&$loc:@linear/horsepower/weight/part_0
s
linear/horsepower/weightIdentity$linear/horsepower/weight/part_0/read*
T0*
_output_shapes

:
Ą
linear/linear/horsepower/matmulMatMul#linear/linear/horsepower/ExpandDimslinear/horsepower/weight*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
n
linear/linear/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
¢
linear/linear/Reshape_1Reshapelinear/linear/horsepower/matmullinear/linear/Reshape_1/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
n
#linear/linear/length/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
Ŗ
linear/linear/length/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:5#linear/linear/length/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0
²
-linear/length/weight/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *.
_class$
" loc:@linear/length/weight/part_0
æ
linear/length/weight/part_0
VariableV2*
	container *.
_class$
" loc:@linear/length/weight/part_0*
dtype0*
_output_shapes

:*
shape
:*
shared_name 
ś
"linear/length/weight/part_0/AssignAssignlinear/length/weight/part_0-linear/length/weight/part_0/Initializer/zeros*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*.
_class$
" loc:@linear/length/weight/part_0
¢
 linear/length/weight/part_0/readIdentitylinear/length/weight/part_0*
T0*
_output_shapes

:*.
_class$
" loc:@linear/length/weight/part_0
k
linear/length/weightIdentity linear/length/weight/part_0/read*
T0*
_output_shapes

:
“
linear/linear/length/matmulMatMullinear/linear/length/ExpandDimslinear/length/weight*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
n
linear/linear/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   

linear/linear/Reshape_2Reshapelinear/linear/length/matmullinear/linear/Reshape_2/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
m
"linear/linear/width/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
Ø
linear/linear/width/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:7"linear/linear/width/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0
°
,linear/width/weight/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *-
_class#
!loc:@linear/width/weight/part_0
½
linear/width/weight/part_0
VariableV2*
	container *-
_class#
!loc:@linear/width/weight/part_0*
dtype0*
_output_shapes

:*
shape
:*
shared_name 
ö
!linear/width/weight/part_0/AssignAssignlinear/width/weight/part_0,linear/width/weight/part_0/Initializer/zeros*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*-
_class#
!loc:@linear/width/weight/part_0

linear/width/weight/part_0/readIdentitylinear/width/weight/part_0*
T0*
_output_shapes

:*-
_class#
!loc:@linear/width/weight/part_0
i
linear/width/weightIdentitylinear/width/weight/part_0/read*
T0*
_output_shapes

:
±
linear/linear/width/matmulMatMullinear/linear/width/ExpandDimslinear/width/weight*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
n
linear/linear/Reshape_3/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   

linear/linear/Reshape_3Reshapelinear/linear/width/matmullinear/linear/Reshape_3/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
h
linear/linear/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’

linear/linear/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:4linear/linear/expand_dims/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0

'linear/linear/DenseToSparseTensor/ShapeShapelinear/linear/expand_dims*
T0*
out_type0*
_output_shapes
:

&linear/linear/DenseToSparseTensor/CastCast'linear/linear/DenseToSparseTensor/Shape*

SrcT0*
_output_shapes
:*

DstT0	
k
*linear/linear/DenseToSparseTensor/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB B 
Æ
*linear/linear/DenseToSparseTensor/NotEqualNotEquallinear/linear/expand_dims*linear/linear/DenseToSparseTensor/Cast_1/x*
T0*'
_output_shapes
:’’’’’’’’’

'linear/linear/DenseToSparseTensor/WhereWhere*linear/linear/DenseToSparseTensor/NotEqual*'
_output_shapes
:’’’’’’’’’

/linear/linear/DenseToSparseTensor/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
¼
)linear/linear/DenseToSparseTensor/ReshapeReshapelinear/linear/expand_dims/linear/linear/DenseToSparseTensor/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’*
Tshape0

5linear/linear/DenseToSparseTensor/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"       

7linear/linear/DenseToSparseTensor/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

7linear/linear/DenseToSparseTensor/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
°
/linear/linear/DenseToSparseTensor/strided_sliceStridedSlice'linear/linear/DenseToSparseTensor/Where5linear/linear/DenseToSparseTensor/strided_slice/stack7linear/linear/DenseToSparseTensor/strided_slice/stack_17linear/linear/DenseToSparseTensor/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

7linear/linear/DenseToSparseTensor/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        

9linear/linear/DenseToSparseTensor/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

9linear/linear/DenseToSparseTensor/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
¼
1linear/linear/DenseToSparseTensor/strided_slice_1StridedSlice'linear/linear/DenseToSparseTensor/Where7linear/linear/DenseToSparseTensor/strided_slice_1/stack9linear/linear/DenseToSparseTensor/strided_slice_1/stack_19linear/linear/DenseToSparseTensor/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*'
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

)linear/linear/DenseToSparseTensor/unstackUnpack&linear/linear/DenseToSparseTensor/Cast*
T0	*	
num*
_output_shapes
: : *

axis 

'linear/linear/DenseToSparseTensor/stackPack+linear/linear/DenseToSparseTensor/unstack:1*
T0	*
_output_shapes
:*
N*

axis 
ŗ
%linear/linear/DenseToSparseTensor/MulMul1linear/linear/DenseToSparseTensor/strided_slice_1'linear/linear/DenseToSparseTensor/stack*
T0	*'
_output_shapes
:’’’’’’’’’

7linear/linear/DenseToSparseTensor/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
×
%linear/linear/DenseToSparseTensor/SumSum%linear/linear/DenseToSparseTensor/Mul7linear/linear/DenseToSparseTensor/Sum/reduction_indices*

Tidx0*
T0	*#
_output_shapes
:’’’’’’’’’*
	keep_dims( 
²
%linear/linear/DenseToSparseTensor/AddAdd/linear/linear/DenseToSparseTensor/strided_slice%linear/linear/DenseToSparseTensor/Sum*
T0	*#
_output_shapes
:’’’’’’’’’
ą
(linear/linear/DenseToSparseTensor/GatherGather)linear/linear/DenseToSparseTensor/Reshape%linear/linear/DenseToSparseTensor/Add*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*
Tindices0	

linear/linear/lookupStringToHashBucketFast(linear/linear/DenseToSparseTensor/Gather*
num_buckets2*#
_output_shapes
:’’’’’’’’’
°
,linear/make/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:2*
valueB2*    *-
_class#
!loc:@linear/make/weights/part_0
½
linear/make/weights/part_0
VariableV2*
	container *-
_class#
!loc:@linear/make/weights/part_0*
dtype0*
_output_shapes

:2*
shape
:2*
shared_name 
ö
!linear/make/weights/part_0/AssignAssignlinear/make/weights/part_0,linear/make/weights/part_0/Initializer/zeros*
T0*
_output_shapes

:2*
validate_shape(*
use_locking(*-
_class#
!loc:@linear/make/weights/part_0

linear/make/weights/part_0/readIdentitylinear/make/weights/part_0*
T0*
_output_shapes

:2*-
_class#
!loc:@linear/make/weights/part_0
u
+linear/linear/make/make_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
t
*linear/linear/make/make_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
į
%linear/linear/make/make_weights/SliceSlice&linear/linear/DenseToSparseTensor/Cast+linear/linear/make/make_weights/Slice/begin*linear/linear/make/make_weights/Slice/size*
T0	*
_output_shapes
:*
Index0
o
%linear/linear/make/make_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
ø
$linear/linear/make/make_weights/ProdProd%linear/linear/make/make_weights/Slice%linear/linear/make/make_weights/Const*

Tidx0*
T0	*
_output_shapes
: *
	keep_dims( 
p
.linear/linear/make/make_weights/Gather/indicesConst*
dtype0*
_output_shapes
: *
value	B :
×
&linear/linear/make/make_weights/GatherGather&linear/linear/DenseToSparseTensor/Cast.linear/linear/make/make_weights/Gather/indices*
_output_shapes
: *
validate_indices(*
Tparams0	*
Tindices0
¶
&linear/linear/make/make_weights/Cast/xPack$linear/linear/make/make_weights/Prod&linear/linear/make/make_weights/Gather*
T0	*
_output_shapes
:*
N*

axis 
ę
-linear/linear/make/make_weights/SparseReshapeSparseReshape'linear/linear/DenseToSparseTensor/Where&linear/linear/DenseToSparseTensor/Cast&linear/linear/make/make_weights/Cast/x*-
_output_shapes
:’’’’’’’’’:

6linear/linear/make/make_weights/SparseReshape/IdentityIdentitylinear/linear/lookup*
T0	*#
_output_shapes
:’’’’’’’’’
p
.linear/linear/make/make_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
Ņ
,linear/linear/make/make_weights/GreaterEqualGreaterEqual6linear/linear/make/make_weights/SparseReshape/Identity.linear/linear/make/make_weights/GreaterEqual/y*
T0	*#
_output_shapes
:’’’’’’’’’

%linear/linear/make/make_weights/WhereWhere,linear/linear/make/make_weights/GreaterEqual*'
_output_shapes
:’’’’’’’’’

-linear/linear/make/make_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Ä
'linear/linear/make/make_weights/ReshapeReshape%linear/linear/make/make_weights/Where-linear/linear/make/make_weights/Reshape/shape*
T0	*#
_output_shapes
:’’’’’’’’’*
Tshape0
ź
(linear/linear/make/make_weights/Gather_1Gather-linear/linear/make/make_weights/SparseReshape'linear/linear/make/make_weights/Reshape*'
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0	*
Tindices0	
ļ
(linear/linear/make/make_weights/Gather_2Gather6linear/linear/make/make_weights/SparseReshape/Identity'linear/linear/make/make_weights/Reshape*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0	*
Tindices0	

(linear/linear/make/make_weights/IdentityIdentity/linear/linear/make/make_weights/SparseReshape:1*
T0	*
_output_shapes
:
{
9linear/linear/make/make_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 

Glinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Ilinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Ilinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ģ
Alinear/linear/make/make_weights/SparseFillEmptyRows/strided_sliceStridedSlice(linear/linear/make/make_weights/IdentityGlinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice/stackIlinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice/stack_1Ilinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*
_output_shapes
: *

begin_mask *
Index0
³
8linear/linear/make/make_weights/SparseFillEmptyRows/CastCastAlinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice*

SrcT0	*
_output_shapes
: *

DstT0

?linear/linear/make/make_weights/SparseFillEmptyRows/range/startConst*
dtype0*
_output_shapes
: *
value	B : 

?linear/linear/make/make_weights/SparseFillEmptyRows/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Æ
9linear/linear/make/make_weights/SparseFillEmptyRows/rangeRange?linear/linear/make/make_weights/SparseFillEmptyRows/range/start8linear/linear/make/make_weights/SparseFillEmptyRows/Cast?linear/linear/make/make_weights/SparseFillEmptyRows/range/delta*

Tidx0*#
_output_shapes
:’’’’’’’’’
ŗ
:linear/linear/make/make_weights/SparseFillEmptyRows/Cast_1Cast9linear/linear/make/make_weights/SparseFillEmptyRows/range*

SrcT0*#
_output_shapes
:’’’’’’’’’*

DstT0	

Ilinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        

Klinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

Klinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      

Clinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1StridedSlice(linear/linear/make/make_weights/Gather_1Ilinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1/stackKlinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1/stack_1Klinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

<linear/linear/make/make_weights/SparseFillEmptyRows/ListDiffListDiff:linear/linear/make/make_weights/SparseFillEmptyRows/Cast_1Clinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
out_idx0

Ilinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Klinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Klinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ō
Clinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2StridedSlice(linear/linear/make/make_weights/IdentityIlinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2/stackKlinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2/stack_1Klinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*
_output_shapes
: *

begin_mask *
Index0

Blinear/linear/make/make_weights/SparseFillEmptyRows/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’

>linear/linear/make/make_weights/SparseFillEmptyRows/ExpandDims
ExpandDimsClinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2Blinear/linear/make/make_weights/SparseFillEmptyRows/ExpandDims/dim*
T0	*
_output_shapes
:*

Tdim0

Olinear/linear/make/make_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesConst*
dtype0
*
_output_shapes
: *
value	B
 Z

Olinear/linear/make/make_weights/SparseFillEmptyRows/SparseToDense/default_valueConst*
dtype0
*
_output_shapes
: *
value	B
 Z 
Č
Alinear/linear/make/make_weights/SparseFillEmptyRows/SparseToDenseSparseToDense<linear/linear/make/make_weights/SparseFillEmptyRows/ListDiff>linear/linear/make/make_weights/SparseFillEmptyRows/ExpandDimsOlinear/linear/make/make_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesOlinear/linear/make/make_weights/SparseFillEmptyRows/SparseToDense/default_value*
T0
*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tindices0	

Alinear/linear/make/make_weights/SparseFillEmptyRows/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   

;linear/linear/make/make_weights/SparseFillEmptyRows/ReshapeReshape<linear/linear/make/make_weights/SparseFillEmptyRows/ListDiffAlinear/linear/make/make_weights/SparseFillEmptyRows/Reshape/shape*
T0	*'
_output_shapes
:’’’’’’’’’*
Tshape0
ŗ
>linear/linear/make/make_weights/SparseFillEmptyRows/zeros_like	ZerosLike;linear/linear/make/make_weights/SparseFillEmptyRows/Reshape*
T0	*'
_output_shapes
:’’’’’’’’’

?linear/linear/make/make_weights/SparseFillEmptyRows/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
Ė
:linear/linear/make/make_weights/SparseFillEmptyRows/concatConcatV2;linear/linear/make/make_weights/SparseFillEmptyRows/Reshape>linear/linear/make/make_weights/SparseFillEmptyRows/zeros_like?linear/linear/make/make_weights/SparseFillEmptyRows/concat/axis*

Tidx0*
T0	*'
_output_shapes
:’’’’’’’’’*
N
µ
9linear/linear/make/make_weights/SparseFillEmptyRows/ShapeShape<linear/linear/make/make_weights/SparseFillEmptyRows/ListDiff*
T0	*
out_type0*
_output_shapes
:
ä
8linear/linear/make/make_weights/SparseFillEmptyRows/FillFill9linear/linear/make/make_weights/SparseFillEmptyRows/Shape9linear/linear/make/make_weights/SparseFillEmptyRows/Const*
T0	*#
_output_shapes
:’’’’’’’’’

Alinear/linear/make/make_weights/SparseFillEmptyRows/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ø
<linear/linear/make/make_weights/SparseFillEmptyRows/concat_1ConcatV2(linear/linear/make/make_weights/Gather_1:linear/linear/make/make_weights/SparseFillEmptyRows/concatAlinear/linear/make/make_weights/SparseFillEmptyRows/concat_1/axis*

Tidx0*
T0	*'
_output_shapes
:’’’’’’’’’*
N

Alinear/linear/make/make_weights/SparseFillEmptyRows/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
²
<linear/linear/make/make_weights/SparseFillEmptyRows/concat_2ConcatV2(linear/linear/make/make_weights/Gather_28linear/linear/make/make_weights/SparseFillEmptyRows/FillAlinear/linear/make/make_weights/SparseFillEmptyRows/concat_2/axis*

Tidx0*
T0	*#
_output_shapes
:’’’’’’’’’*
N
¹
Alinear/linear/make/make_weights/SparseFillEmptyRows/SparseReorderSparseReorder<linear/linear/make/make_weights/SparseFillEmptyRows/concat_1<linear/linear/make/make_weights/SparseFillEmptyRows/concat_2(linear/linear/make/make_weights/Identity*
T0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’

<linear/linear/make/make_weights/SparseFillEmptyRows/IdentityIdentity(linear/linear/make/make_weights/Identity*
T0	*
_output_shapes
:

Klinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        

Mlinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

Mlinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
¢
Elinear/linear/make/make_weights/embedding_lookup_sparse/strided_sliceStridedSliceAlinear/linear/make/make_weights/SparseFillEmptyRows/SparseReorderKlinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice/stackMlinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice/stack_1Mlinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0
Č
<linear/linear/make/make_weights/embedding_lookup_sparse/CastCastElinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:’’’’’’’’’*

DstT0
Ł
>linear/linear/make/make_weights/embedding_lookup_sparse/UniqueUniqueClinear/linear/make/make_weights/SparseFillEmptyRows/SparseReorder:1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
out_idx0
Ā
Hlinear/linear/make/make_weights/embedding_lookup_sparse/embedding_lookupGatherlinear/make/weights/part_0/read>linear/linear/make/make_weights/embedding_lookup_sparse/Unique*'
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*-
_class#
!loc:@linear/make/weights/part_0*
Tindices0	
Ó
7linear/linear/make/make_weights/embedding_lookup_sparseSparseSegmentSumHlinear/linear/make/make_weights/embedding_lookup_sparse/embedding_lookup@linear/linear/make/make_weights/embedding_lookup_sparse/Unique:1<linear/linear/make/make_weights/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:’’’’’’’’’

/linear/linear/make/make_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
č
)linear/linear/make/make_weights/Reshape_1ReshapeAlinear/linear/make/make_weights/SparseFillEmptyRows/SparseToDense/linear/linear/make/make_weights/Reshape_1/shape*
T0
*'
_output_shapes
:’’’’’’’’’*
Tshape0

%linear/linear/make/make_weights/ShapeShape7linear/linear/make/make_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
}
3linear/linear/make/make_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

5linear/linear/make/make_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

5linear/linear/make/make_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

-linear/linear/make/make_weights/strided_sliceStridedSlice%linear/linear/make/make_weights/Shape3linear/linear/make/make_weights/strided_slice/stack5linear/linear/make/make_weights/strided_slice/stack_15linear/linear/make/make_weights/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0*
_output_shapes
: *

begin_mask *
Index0
i
'linear/linear/make/make_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
æ
%linear/linear/make/make_weights/stackPack'linear/linear/make/make_weights/stack/0-linear/linear/make/make_weights/strided_slice*
T0*
_output_shapes
:*
N*

axis 
Ė
$linear/linear/make/make_weights/TileTile)linear/linear/make/make_weights/Reshape_1%linear/linear/make/make_weights/stack*
T0
*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*

Tmultiples0
¢
*linear/linear/make/make_weights/zeros_like	ZerosLike7linear/linear/make/make_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’
ę
linear/linear/make/make_weightsSelect$linear/linear/make/make_weights/Tile*linear/linear/make/make_weights/zeros_like7linear/linear/make/make_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’

&linear/linear/make/make_weights/Cast_1Cast&linear/linear/DenseToSparseTensor/Cast*

SrcT0	*
_output_shapes
:*

DstT0
w
-linear/linear/make/make_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
v
,linear/linear/make/make_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
ē
'linear/linear/make/make_weights/Slice_1Slice&linear/linear/make/make_weights/Cast_1-linear/linear/make/make_weights/Slice_1/begin,linear/linear/make/make_weights/Slice_1/size*
T0*
_output_shapes
:*
Index0

'linear/linear/make/make_weights/Shape_1Shapelinear/linear/make/make_weights*
T0*
out_type0*
_output_shapes
:
w
-linear/linear/make/make_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:

,linear/linear/make/make_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
č
'linear/linear/make/make_weights/Slice_2Slice'linear/linear/make/make_weights/Shape_1-linear/linear/make/make_weights/Slice_2/begin,linear/linear/make/make_weights/Slice_2/size*
T0*
_output_shapes
:*
Index0
m
+linear/linear/make/make_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ė
&linear/linear/make/make_weights/concatConcatV2'linear/linear/make/make_weights/Slice_1'linear/linear/make/make_weights/Slice_2+linear/linear/make/make_weights/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N
½
)linear/linear/make/make_weights/Reshape_2Reshapelinear/linear/make/make_weights&linear/linear/make/make_weights/concat*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
n
linear/linear/Reshape_4/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
¬
linear/linear/Reshape_4Reshape)linear/linear/make/make_weights/Reshape_2linear/linear/Reshape_4/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
j
linear/linear/expand_dims_1/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
¢
linear/linear/expand_dims_1
ExpandDimsfifo_queue_DequeueUpTo:2linear/linear/expand_dims_1/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0

)linear/linear/DenseToSparseTensor_1/ShapeShapelinear/linear/expand_dims_1*
T0*
out_type0*
_output_shapes
:

(linear/linear/DenseToSparseTensor_1/CastCast)linear/linear/DenseToSparseTensor_1/Shape*

SrcT0*
_output_shapes
:*

DstT0	
m
,linear/linear/DenseToSparseTensor_1/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB B 
µ
,linear/linear/DenseToSparseTensor_1/NotEqualNotEquallinear/linear/expand_dims_1,linear/linear/DenseToSparseTensor_1/Cast_1/x*
T0*'
_output_shapes
:’’’’’’’’’

)linear/linear/DenseToSparseTensor_1/WhereWhere,linear/linear/DenseToSparseTensor_1/NotEqual*'
_output_shapes
:’’’’’’’’’

1linear/linear/DenseToSparseTensor_1/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Ā
+linear/linear/DenseToSparseTensor_1/ReshapeReshapelinear/linear/expand_dims_11linear/linear/DenseToSparseTensor_1/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’*
Tshape0

7linear/linear/DenseToSparseTensor_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"       

9linear/linear/DenseToSparseTensor_1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

9linear/linear/DenseToSparseTensor_1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ŗ
1linear/linear/DenseToSparseTensor_1/strided_sliceStridedSlice)linear/linear/DenseToSparseTensor_1/Where7linear/linear/DenseToSparseTensor_1/strided_slice/stack9linear/linear/DenseToSparseTensor_1/strided_slice/stack_19linear/linear/DenseToSparseTensor_1/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

9linear/linear/DenseToSparseTensor_1/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        

;linear/linear/DenseToSparseTensor_1/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

;linear/linear/DenseToSparseTensor_1/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Ę
3linear/linear/DenseToSparseTensor_1/strided_slice_1StridedSlice)linear/linear/DenseToSparseTensor_1/Where9linear/linear/DenseToSparseTensor_1/strided_slice_1/stack;linear/linear/DenseToSparseTensor_1/strided_slice_1/stack_1;linear/linear/DenseToSparseTensor_1/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*'
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

+linear/linear/DenseToSparseTensor_1/unstackUnpack(linear/linear/DenseToSparseTensor_1/Cast*
T0	*	
num*
_output_shapes
: : *

axis 

)linear/linear/DenseToSparseTensor_1/stackPack-linear/linear/DenseToSparseTensor_1/unstack:1*
T0	*
_output_shapes
:*
N*

axis 
Ą
'linear/linear/DenseToSparseTensor_1/MulMul3linear/linear/DenseToSparseTensor_1/strided_slice_1)linear/linear/DenseToSparseTensor_1/stack*
T0	*'
_output_shapes
:’’’’’’’’’

9linear/linear/DenseToSparseTensor_1/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
Ż
'linear/linear/DenseToSparseTensor_1/SumSum'linear/linear/DenseToSparseTensor_1/Mul9linear/linear/DenseToSparseTensor_1/Sum/reduction_indices*

Tidx0*
T0	*#
_output_shapes
:’’’’’’’’’*
	keep_dims( 
ø
'linear/linear/DenseToSparseTensor_1/AddAdd1linear/linear/DenseToSparseTensor_1/strided_slice'linear/linear/DenseToSparseTensor_1/Sum*
T0	*#
_output_shapes
:’’’’’’’’’
ę
*linear/linear/DenseToSparseTensor_1/GatherGather+linear/linear/DenseToSparseTensor_1/Reshape'linear/linear/DenseToSparseTensor_1/Add*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*
Tindices0	

linear/linear/lookup_1/ConstConst*
dtype0*
_output_shapes
:*?
value6B4BeightBfiveBfourBsixBthreeBtwelveBtwo
]
linear/linear/lookup_1/SizeConst*
dtype0*
_output_shapes
: *
value	B :
d
"linear/linear/lookup_1/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
d
"linear/linear/lookup_1/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
²
linear/linear/lookup_1/rangeRange"linear/linear/lookup_1/range/startlinear/linear/lookup_1/Size"linear/linear/lookup_1/range/delta*

Tidx0*
_output_shapes
:
x
linear/linear/lookup_1/ToInt64Castlinear/linear/lookup_1/range*

SrcT0*
_output_shapes
:*

DstT0	
Æ
!linear/linear/lookup_1/hash_table	HashTable*
	container *
	key_dtype0*
use_node_name_sharing( *
_output_shapes
:*
value_dtype0	*
shared_name 
r
'linear/linear/lookup_1/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
’’’’’’’’’
ī
,linear/linear/lookup_1/hash_table/table_initInitializeTable!linear/linear/lookup_1/hash_tablelinear/linear/lookup_1/Constlinear/linear/lookup_1/ToInt64*

Tval0	*

Tkey0*4
_class*
(&loc:@linear/linear/lookup_1/hash_table

linear/linear/hash_table_LookupLookupTableFind!linear/linear/lookup_1/hash_table*linear/linear/DenseToSparseTensor_1/Gather'linear/linear/lookup_1/hash_table/Const*#
_output_shapes
:’’’’’’’’’*

Tout0	*	
Tin0*4
_class*
(&loc:@linear/linear/lookup_1/hash_table
Č
8linear/num-of-cylinders/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0
Õ
&linear/num-of-cylinders/weights/part_0
VariableV2*
	container *9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0*
dtype0*
_output_shapes

:*
shape
:*
shared_name 
¦
-linear/num-of-cylinders/weights/part_0/AssignAssign&linear/num-of-cylinders/weights/part_08linear/num-of-cylinders/weights/part_0/Initializer/zeros*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0
Ć
+linear/num-of-cylinders/weights/part_0/readIdentity&linear/num-of-cylinders/weights/part_0*
T0*
_output_shapes

:*9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0

Clinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 

Blinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
«
=linear/linear/num-of-cylinders/num-of-cylinders_weights/SliceSlice(linear/linear/DenseToSparseTensor_1/CastClinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice/beginBlinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice/size*
T0	*
_output_shapes
:*
Index0

=linear/linear/num-of-cylinders/num-of-cylinders_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

<linear/linear/num-of-cylinders/num-of-cylinders_weights/ProdProd=linear/linear/num-of-cylinders/num-of-cylinders_weights/Slice=linear/linear/num-of-cylinders/num-of-cylinders_weights/Const*

Tidx0*
T0	*
_output_shapes
: *
	keep_dims( 

Flinear/linear/num-of-cylinders/num-of-cylinders_weights/Gather/indicesConst*
dtype0*
_output_shapes
: *
value	B :

>linear/linear/num-of-cylinders/num-of-cylinders_weights/GatherGather(linear/linear/DenseToSparseTensor_1/CastFlinear/linear/num-of-cylinders/num-of-cylinders_weights/Gather/indices*
_output_shapes
: *
validate_indices(*
Tparams0	*
Tindices0
ž
>linear/linear/num-of-cylinders/num-of-cylinders_weights/Cast/xPack<linear/linear/num-of-cylinders/num-of-cylinders_weights/Prod>linear/linear/num-of-cylinders/num-of-cylinders_weights/Gather*
T0	*
_output_shapes
:*
N*

axis 

Elinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseReshapeSparseReshape)linear/linear/DenseToSparseTensor_1/Where(linear/linear/DenseToSparseTensor_1/Cast>linear/linear/num-of-cylinders/num-of-cylinders_weights/Cast/x*-
_output_shapes
:’’’’’’’’’:
©
Nlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseReshape/IdentityIdentitylinear/linear/hash_table_Lookup*
T0	*#
_output_shapes
:’’’’’’’’’

Flinear/linear/num-of-cylinders/num-of-cylinders_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 

Dlinear/linear/num-of-cylinders/num-of-cylinders_weights/GreaterEqualGreaterEqualNlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseReshape/IdentityFlinear/linear/num-of-cylinders/num-of-cylinders_weights/GreaterEqual/y*
T0	*#
_output_shapes
:’’’’’’’’’
µ
=linear/linear/num-of-cylinders/num-of-cylinders_weights/WhereWhereDlinear/linear/num-of-cylinders/num-of-cylinders_weights/GreaterEqual*'
_output_shapes
:’’’’’’’’’

Elinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’

?linear/linear/num-of-cylinders/num-of-cylinders_weights/ReshapeReshape=linear/linear/num-of-cylinders/num-of-cylinders_weights/WhereElinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape/shape*
T0	*#
_output_shapes
:’’’’’’’’’*
Tshape0
²
@linear/linear/num-of-cylinders/num-of-cylinders_weights/Gather_1GatherElinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseReshape?linear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape*'
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0	*
Tindices0	
·
@linear/linear/num-of-cylinders/num-of-cylinders_weights/Gather_2GatherNlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseReshape/Identity?linear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0	*
Tindices0	
ŗ
@linear/linear/num-of-cylinders/num-of-cylinders_weights/IdentityIdentityGlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseReshape:1*
T0	*
_output_shapes
:

Qlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
©
_linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
«
alinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
«
alinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ä
Ylinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_sliceStridedSlice@linear/linear/num-of-cylinders/num-of-cylinders_weights/Identity_linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice/stackalinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice/stack_1alinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*
_output_shapes
: *

begin_mask *
Index0
ć
Plinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/CastCastYlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice*

SrcT0	*
_output_shapes
: *

DstT0

Wlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/range/startConst*
dtype0*
_output_shapes
: *
value	B : 

Wlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :

Qlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/rangeRangeWlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/range/startPlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/CastWlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/range/delta*

Tidx0*#
_output_shapes
:’’’’’’’’’
ź
Rlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/Cast_1CastQlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/range*

SrcT0*#
_output_shapes
:’’’’’’’’’*

DstT0	
²
alinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        
“
clinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
“
clinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ł
[linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1StridedSlice@linear/linear/num-of-cylinders/num-of-cylinders_weights/Gather_1alinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1/stackclinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1/stack_1clinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0
Ż
Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ListDiffListDiffRlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/Cast_1[linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
out_idx0
«
alinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB: 
­
clinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
­
clinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ģ
[linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2StridedSlice@linear/linear/num-of-cylinders/num-of-cylinders_weights/Identityalinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2/stackclinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2/stack_1clinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*
_output_shapes
: *

begin_mask *
Index0
„
Zlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
Ī
Vlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ExpandDims
ExpandDims[linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2Zlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ExpandDims/dim*
T0	*
_output_shapes
:*

Tdim0
©
glinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesConst*
dtype0
*
_output_shapes
: *
value	B
 Z
©
glinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseToDense/default_valueConst*
dtype0
*
_output_shapes
: *
value	B
 Z 
Ą
Ylinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseToDenseSparseToDenseTlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ListDiffVlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ExpandDimsglinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesglinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseToDense/default_value*
T0
*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tindices0	
Ŗ
Ylinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
Ļ
Slinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ReshapeReshapeTlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ListDiffYlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/Reshape/shape*
T0	*'
_output_shapes
:’’’’’’’’’*
Tshape0
ź
Vlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/zeros_like	ZerosLikeSlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/Reshape*
T0	*'
_output_shapes
:’’’’’’’’’

Wlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
«
Rlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concatConcatV2Slinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ReshapeVlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/zeros_likeWlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat/axis*

Tidx0*
T0	*'
_output_shapes
:’’’’’’’’’*
N
å
Qlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ShapeShapeTlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ListDiff*
T0	*
out_type0*
_output_shapes
:
¬
Plinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/FillFillQlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ShapeQlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/Const*
T0	*#
_output_shapes
:’’’’’’’’’

Ylinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 

Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_1ConcatV2@linear/linear/num-of-cylinders/num-of-cylinders_weights/Gather_1Rlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concatYlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_1/axis*

Tidx0*
T0	*'
_output_shapes
:’’’’’’’’’*
N

Ylinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 

Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_2ConcatV2@linear/linear/num-of-cylinders/num-of-cylinders_weights/Gather_2Plinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/FillYlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_2/axis*

Tidx0*
T0	*#
_output_shapes
:’’’’’’’’’*
N

Ylinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseReorderSparseReorderTlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_1Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_2@linear/linear/num-of-cylinders/num-of-cylinders_weights/Identity*
T0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
Ē
Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/IdentityIdentity@linear/linear/num-of-cylinders/num-of-cylinders_weights/Identity*
T0	*
_output_shapes
:
“
clinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
¶
elinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
¶
elinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      

]linear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_sliceStridedSliceYlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseReorderclinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice/stackelinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice/stack_1elinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0
ų
Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/CastCast]linear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:’’’’’’’’’*

DstT0

Vlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/UniqueUnique[linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseReorder:1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
out_idx0

`linear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/embedding_lookupGather+linear/num-of-cylinders/weights/part_0/readVlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/Unique*'
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0*
Tindices0	
³
Olinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparseSparseSegmentSum`linear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/embedding_lookupXlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/Unique:1Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:’’’’’’’’’

Glinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
°
Alinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape_1ReshapeYlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseToDenseGlinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape_1/shape*
T0
*'
_output_shapes
:’’’’’’’’’*
Tshape0
Ģ
=linear/linear/num-of-cylinders/num-of-cylinders_weights/ShapeShapeOlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:

Klinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

Mlinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Mlinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

Elinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_sliceStridedSlice=linear/linear/num-of-cylinders/num-of-cylinders_weights/ShapeKlinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice/stackMlinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice/stack_1Mlinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0*
_output_shapes
: *

begin_mask *
Index0

?linear/linear/num-of-cylinders/num-of-cylinders_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :

=linear/linear/num-of-cylinders/num-of-cylinders_weights/stackPack?linear/linear/num-of-cylinders/num-of-cylinders_weights/stack/0Elinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice*
T0*
_output_shapes
:*
N*

axis 

<linear/linear/num-of-cylinders/num-of-cylinders_weights/TileTileAlinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape_1=linear/linear/num-of-cylinders/num-of-cylinders_weights/stack*
T0
*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*

Tmultiples0
Ņ
Blinear/linear/num-of-cylinders/num-of-cylinders_weights/zeros_like	ZerosLikeOlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’
Ę
7linear/linear/num-of-cylinders/num-of-cylinders_weightsSelect<linear/linear/num-of-cylinders/num-of-cylinders_weights/TileBlinear/linear/num-of-cylinders/num-of-cylinders_weights/zeros_likeOlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’
¤
>linear/linear/num-of-cylinders/num-of-cylinders_weights/Cast_1Cast(linear/linear/DenseToSparseTensor_1/Cast*

SrcT0	*
_output_shapes
:*

DstT0

Elinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 

Dlinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Ē
?linear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_1Slice>linear/linear/num-of-cylinders/num-of-cylinders_weights/Cast_1Elinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_1/beginDlinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_1/size*
T0*
_output_shapes
:*
Index0
¶
?linear/linear/num-of-cylinders/num-of-cylinders_weights/Shape_1Shape7linear/linear/num-of-cylinders/num-of-cylinders_weights*
T0*
out_type0*
_output_shapes
:

Elinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:

Dlinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Č
?linear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_2Slice?linear/linear/num-of-cylinders/num-of-cylinders_weights/Shape_1Elinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_2/beginDlinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_2/size*
T0*
_output_shapes
:*
Index0

Clinear/linear/num-of-cylinders/num-of-cylinders_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ė
>linear/linear/num-of-cylinders/num-of-cylinders_weights/concatConcatV2?linear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_1?linear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_2Clinear/linear/num-of-cylinders/num-of-cylinders_weights/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N

Alinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape_2Reshape7linear/linear/num-of-cylinders/num-of-cylinders_weights>linear/linear/num-of-cylinders/num-of-cylinders_weights/concat*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
n
linear/linear/Reshape_5/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
Ä
linear/linear/Reshape_5ReshapeAlinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape_2linear/linear/Reshape_5/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
j
linear/linear/expand_dims_2/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
¢
linear/linear/expand_dims_2
ExpandDimsfifo_queue_DequeueUpTo:1linear/linear/expand_dims_2/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0

)linear/linear/DenseToSparseTensor_2/ShapeShapelinear/linear/expand_dims_2*
T0*
out_type0*
_output_shapes
:

(linear/linear/DenseToSparseTensor_2/CastCast)linear/linear/DenseToSparseTensor_2/Shape*

SrcT0*
_output_shapes
:*

DstT0	
m
,linear/linear/DenseToSparseTensor_2/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB B 
µ
,linear/linear/DenseToSparseTensor_2/NotEqualNotEquallinear/linear/expand_dims_2,linear/linear/DenseToSparseTensor_2/Cast_1/x*
T0*'
_output_shapes
:’’’’’’’’’

)linear/linear/DenseToSparseTensor_2/WhereWhere,linear/linear/DenseToSparseTensor_2/NotEqual*'
_output_shapes
:’’’’’’’’’

1linear/linear/DenseToSparseTensor_2/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Ā
+linear/linear/DenseToSparseTensor_2/ReshapeReshapelinear/linear/expand_dims_21linear/linear/DenseToSparseTensor_2/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’*
Tshape0

7linear/linear/DenseToSparseTensor_2/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"       

9linear/linear/DenseToSparseTensor_2/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

9linear/linear/DenseToSparseTensor_2/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ŗ
1linear/linear/DenseToSparseTensor_2/strided_sliceStridedSlice)linear/linear/DenseToSparseTensor_2/Where7linear/linear/DenseToSparseTensor_2/strided_slice/stack9linear/linear/DenseToSparseTensor_2/strided_slice/stack_19linear/linear/DenseToSparseTensor_2/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

9linear/linear/DenseToSparseTensor_2/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        

;linear/linear/DenseToSparseTensor_2/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

;linear/linear/DenseToSparseTensor_2/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Ę
3linear/linear/DenseToSparseTensor_2/strided_slice_1StridedSlice)linear/linear/DenseToSparseTensor_2/Where9linear/linear/DenseToSparseTensor_2/strided_slice_1/stack;linear/linear/DenseToSparseTensor_2/strided_slice_1/stack_1;linear/linear/DenseToSparseTensor_2/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*'
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

+linear/linear/DenseToSparseTensor_2/unstackUnpack(linear/linear/DenseToSparseTensor_2/Cast*
T0	*	
num*
_output_shapes
: : *

axis 

)linear/linear/DenseToSparseTensor_2/stackPack-linear/linear/DenseToSparseTensor_2/unstack:1*
T0	*
_output_shapes
:*
N*

axis 
Ą
'linear/linear/DenseToSparseTensor_2/MulMul3linear/linear/DenseToSparseTensor_2/strided_slice_1)linear/linear/DenseToSparseTensor_2/stack*
T0	*'
_output_shapes
:’’’’’’’’’

9linear/linear/DenseToSparseTensor_2/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
Ż
'linear/linear/DenseToSparseTensor_2/SumSum'linear/linear/DenseToSparseTensor_2/Mul9linear/linear/DenseToSparseTensor_2/Sum/reduction_indices*

Tidx0*
T0	*#
_output_shapes
:’’’’’’’’’*
	keep_dims( 
ø
'linear/linear/DenseToSparseTensor_2/AddAdd1linear/linear/DenseToSparseTensor_2/strided_slice'linear/linear/DenseToSparseTensor_2/Sum*
T0	*#
_output_shapes
:’’’’’’’’’
ę
*linear/linear/DenseToSparseTensor_2/GatherGather+linear/linear/DenseToSparseTensor_2/Reshape'linear/linear/DenseToSparseTensor_2/Add*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*
Tindices0	
n
linear/linear/lookup_2/ConstConst*
dtype0*
_output_shapes
:*
valueBBtwoBfour
]
linear/linear/lookup_2/SizeConst*
dtype0*
_output_shapes
: *
value	B :
d
"linear/linear/lookup_2/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
d
"linear/linear/lookup_2/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
²
linear/linear/lookup_2/rangeRange"linear/linear/lookup_2/range/startlinear/linear/lookup_2/Size"linear/linear/lookup_2/range/delta*

Tidx0*
_output_shapes
:
x
linear/linear/lookup_2/ToInt64Castlinear/linear/lookup_2/range*

SrcT0*
_output_shapes
:*

DstT0	
Æ
!linear/linear/lookup_2/hash_table	HashTable*
	container *
	key_dtype0*
use_node_name_sharing( *
_output_shapes
:*
value_dtype0	*
shared_name 
r
'linear/linear/lookup_2/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
’’’’’’’’’
ī
,linear/linear/lookup_2/hash_table/table_initInitializeTable!linear/linear/lookup_2/hash_tablelinear/linear/lookup_2/Constlinear/linear/lookup_2/ToInt64*

Tval0	*

Tkey0*4
_class*
(&loc:@linear/linear/lookup_2/hash_table

!linear/linear/hash_table_Lookup_1LookupTableFind!linear/linear/lookup_2/hash_table*linear/linear/DenseToSparseTensor_2/Gather'linear/linear/lookup_2/hash_table/Const*#
_output_shapes
:’’’’’’’’’*

Tout0	*	
Tin0*4
_class*
(&loc:@linear/linear/lookup_2/hash_table
Ą
4linear/num-of-doors/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *5
_class+
)'loc:@linear/num-of-doors/weights/part_0
Ķ
"linear/num-of-doors/weights/part_0
VariableV2*
	container *5
_class+
)'loc:@linear/num-of-doors/weights/part_0*
dtype0*
_output_shapes

:*
shape
:*
shared_name 

)linear/num-of-doors/weights/part_0/AssignAssign"linear/num-of-doors/weights/part_04linear/num-of-doors/weights/part_0/Initializer/zeros*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*5
_class+
)'loc:@linear/num-of-doors/weights/part_0
·
'linear/num-of-doors/weights/part_0/readIdentity"linear/num-of-doors/weights/part_0*
T0*
_output_shapes

:*5
_class+
)'loc:@linear/num-of-doors/weights/part_0

;linear/linear/num-of-doors/num-of-doors_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 

:linear/linear/num-of-doors/num-of-doors_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:

5linear/linear/num-of-doors/num-of-doors_weights/SliceSlice(linear/linear/DenseToSparseTensor_2/Cast;linear/linear/num-of-doors/num-of-doors_weights/Slice/begin:linear/linear/num-of-doors/num-of-doors_weights/Slice/size*
T0	*
_output_shapes
:*
Index0

5linear/linear/num-of-doors/num-of-doors_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
č
4linear/linear/num-of-doors/num-of-doors_weights/ProdProd5linear/linear/num-of-doors/num-of-doors_weights/Slice5linear/linear/num-of-doors/num-of-doors_weights/Const*

Tidx0*
T0	*
_output_shapes
: *
	keep_dims( 

>linear/linear/num-of-doors/num-of-doors_weights/Gather/indicesConst*
dtype0*
_output_shapes
: *
value	B :
ł
6linear/linear/num-of-doors/num-of-doors_weights/GatherGather(linear/linear/DenseToSparseTensor_2/Cast>linear/linear/num-of-doors/num-of-doors_weights/Gather/indices*
_output_shapes
: *
validate_indices(*
Tparams0	*
Tindices0
ę
6linear/linear/num-of-doors/num-of-doors_weights/Cast/xPack4linear/linear/num-of-doors/num-of-doors_weights/Prod6linear/linear/num-of-doors/num-of-doors_weights/Gather*
T0	*
_output_shapes
:*
N*

axis 

=linear/linear/num-of-doors/num-of-doors_weights/SparseReshapeSparseReshape)linear/linear/DenseToSparseTensor_2/Where(linear/linear/DenseToSparseTensor_2/Cast6linear/linear/num-of-doors/num-of-doors_weights/Cast/x*-
_output_shapes
:’’’’’’’’’:
£
Flinear/linear/num-of-doors/num-of-doors_weights/SparseReshape/IdentityIdentity!linear/linear/hash_table_Lookup_1*
T0	*#
_output_shapes
:’’’’’’’’’

>linear/linear/num-of-doors/num-of-doors_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 

<linear/linear/num-of-doors/num-of-doors_weights/GreaterEqualGreaterEqualFlinear/linear/num-of-doors/num-of-doors_weights/SparseReshape/Identity>linear/linear/num-of-doors/num-of-doors_weights/GreaterEqual/y*
T0	*#
_output_shapes
:’’’’’’’’’
„
5linear/linear/num-of-doors/num-of-doors_weights/WhereWhere<linear/linear/num-of-doors/num-of-doors_weights/GreaterEqual*'
_output_shapes
:’’’’’’’’’

=linear/linear/num-of-doors/num-of-doors_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
ō
7linear/linear/num-of-doors/num-of-doors_weights/ReshapeReshape5linear/linear/num-of-doors/num-of-doors_weights/Where=linear/linear/num-of-doors/num-of-doors_weights/Reshape/shape*
T0	*#
_output_shapes
:’’’’’’’’’*
Tshape0

8linear/linear/num-of-doors/num-of-doors_weights/Gather_1Gather=linear/linear/num-of-doors/num-of-doors_weights/SparseReshape7linear/linear/num-of-doors/num-of-doors_weights/Reshape*'
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0	*
Tindices0	

8linear/linear/num-of-doors/num-of-doors_weights/Gather_2GatherFlinear/linear/num-of-doors/num-of-doors_weights/SparseReshape/Identity7linear/linear/num-of-doors/num-of-doors_weights/Reshape*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0	*
Tindices0	
Ŗ
8linear/linear/num-of-doors/num-of-doors_weights/IdentityIdentity?linear/linear/num-of-doors/num-of-doors_weights/SparseReshape:1*
T0	*
_output_shapes
:

Ilinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
”
Wlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
£
Ylinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
£
Ylinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
¼
Qlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_sliceStridedSlice8linear/linear/num-of-doors/num-of-doors_weights/IdentityWlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice/stackYlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice/stack_1Ylinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*
_output_shapes
: *

begin_mask *
Index0
Ó
Hlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/CastCastQlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice*

SrcT0	*
_output_shapes
: *

DstT0

Olinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/range/startConst*
dtype0*
_output_shapes
: *
value	B : 

Olinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
ļ
Ilinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/rangeRangeOlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/range/startHlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/CastOlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/range/delta*

Tidx0*#
_output_shapes
:’’’’’’’’’
Ś
Jlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/Cast_1CastIlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/range*

SrcT0*#
_output_shapes
:’’’’’’’’’*

DstT0	
Ŗ
Ylinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        
¬
[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
¬
[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Ń
Slinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1StridedSlice8linear/linear/num-of-doors/num-of-doors_weights/Gather_1Ylinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1/stack[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1/stack_1[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0
Å
Llinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ListDiffListDiffJlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/Cast_1Slinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
out_idx0
£
Ylinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB: 
„
[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
„
[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ä
Slinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2StridedSlice8linear/linear/num-of-doors/num-of-doors_weights/IdentityYlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2/stack[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2/stack_1[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*
_output_shapes
: *

begin_mask *
Index0

Rlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
¶
Nlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ExpandDims
ExpandDimsSlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2Rlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ExpandDims/dim*
T0	*
_output_shapes
:*

Tdim0
”
_linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesConst*
dtype0
*
_output_shapes
: *
value	B
 Z
”
_linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseToDense/default_valueConst*
dtype0
*
_output_shapes
: *
value	B
 Z 

Qlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseToDenseSparseToDenseLlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ListDiffNlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ExpandDims_linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseToDense/sparse_values_linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseToDense/default_value*
T0
*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tindices0	
¢
Qlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
·
Klinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ReshapeReshapeLlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ListDiffQlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/Reshape/shape*
T0	*'
_output_shapes
:’’’’’’’’’*
Tshape0
Ś
Nlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/zeros_like	ZerosLikeKlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/Reshape*
T0	*'
_output_shapes
:’’’’’’’’’

Olinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :

Jlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concatConcatV2Klinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ReshapeNlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/zeros_likeOlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat/axis*

Tidx0*
T0	*'
_output_shapes
:’’’’’’’’’*
N
Õ
Ilinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ShapeShapeLlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ListDiff*
T0	*
out_type0*
_output_shapes
:

Hlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/FillFillIlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ShapeIlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/Const*
T0	*#
_output_shapes
:’’’’’’’’’

Qlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ų
Llinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_1ConcatV28linear/linear/num-of-doors/num-of-doors_weights/Gather_1Jlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concatQlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_1/axis*

Tidx0*
T0	*'
_output_shapes
:’’’’’’’’’*
N

Qlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ņ
Llinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_2ConcatV28linear/linear/num-of-doors/num-of-doors_weights/Gather_2Hlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/FillQlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_2/axis*

Tidx0*
T0	*#
_output_shapes
:’’’’’’’’’*
N
ł
Qlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseReorderSparseReorderLlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_1Llinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_28linear/linear/num-of-doors/num-of-doors_weights/Identity*
T0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
·
Llinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/IdentityIdentity8linear/linear/num-of-doors/num-of-doors_weights/Identity*
T0	*
_output_shapes
:
¬
[linear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
®
]linear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
®
]linear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ņ
Ulinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_sliceStridedSliceQlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseReorder[linear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice/stack]linear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice/stack_1]linear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0
č
Llinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/CastCastUlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:’’’’’’’’’*

DstT0
ł
Nlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/UniqueUniqueSlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseReorder:1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
out_idx0
ņ
Xlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/embedding_lookupGather'linear/num-of-doors/weights/part_0/readNlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/Unique*'
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*5
_class+
)'loc:@linear/num-of-doors/weights/part_0*
Tindices0	

Glinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparseSparseSegmentSumXlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/embedding_lookupPlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/Unique:1Llinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:’’’’’’’’’

?linear/linear/num-of-doors/num-of-doors_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   

9linear/linear/num-of-doors/num-of-doors_weights/Reshape_1ReshapeQlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseToDense?linear/linear/num-of-doors/num-of-doors_weights/Reshape_1/shape*
T0
*'
_output_shapes
:’’’’’’’’’*
Tshape0
¼
5linear/linear/num-of-doors/num-of-doors_weights/ShapeShapeGlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:

Clinear/linear/num-of-doors/num-of-doors_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

Elinear/linear/num-of-doors/num-of-doors_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Elinear/linear/num-of-doors/num-of-doors_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
é
=linear/linear/num-of-doors/num-of-doors_weights/strided_sliceStridedSlice5linear/linear/num-of-doors/num-of-doors_weights/ShapeClinear/linear/num-of-doors/num-of-doors_weights/strided_slice/stackElinear/linear/num-of-doors/num-of-doors_weights/strided_slice/stack_1Elinear/linear/num-of-doors/num-of-doors_weights/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0*
_output_shapes
: *

begin_mask *
Index0
y
7linear/linear/num-of-doors/num-of-doors_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
ļ
5linear/linear/num-of-doors/num-of-doors_weights/stackPack7linear/linear/num-of-doors/num-of-doors_weights/stack/0=linear/linear/num-of-doors/num-of-doors_weights/strided_slice*
T0*
_output_shapes
:*
N*

axis 
ū
4linear/linear/num-of-doors/num-of-doors_weights/TileTile9linear/linear/num-of-doors/num-of-doors_weights/Reshape_15linear/linear/num-of-doors/num-of-doors_weights/stack*
T0
*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*

Tmultiples0
Ā
:linear/linear/num-of-doors/num-of-doors_weights/zeros_like	ZerosLikeGlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’
¦
/linear/linear/num-of-doors/num-of-doors_weightsSelect4linear/linear/num-of-doors/num-of-doors_weights/Tile:linear/linear/num-of-doors/num-of-doors_weights/zeros_likeGlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’

6linear/linear/num-of-doors/num-of-doors_weights/Cast_1Cast(linear/linear/DenseToSparseTensor_2/Cast*

SrcT0	*
_output_shapes
:*

DstT0

=linear/linear/num-of-doors/num-of-doors_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 

<linear/linear/num-of-doors/num-of-doors_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
§
7linear/linear/num-of-doors/num-of-doors_weights/Slice_1Slice6linear/linear/num-of-doors/num-of-doors_weights/Cast_1=linear/linear/num-of-doors/num-of-doors_weights/Slice_1/begin<linear/linear/num-of-doors/num-of-doors_weights/Slice_1/size*
T0*
_output_shapes
:*
Index0
¦
7linear/linear/num-of-doors/num-of-doors_weights/Shape_1Shape/linear/linear/num-of-doors/num-of-doors_weights*
T0*
out_type0*
_output_shapes
:

=linear/linear/num-of-doors/num-of-doors_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:

<linear/linear/num-of-doors/num-of-doors_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Ø
7linear/linear/num-of-doors/num-of-doors_weights/Slice_2Slice7linear/linear/num-of-doors/num-of-doors_weights/Shape_1=linear/linear/num-of-doors/num-of-doors_weights/Slice_2/begin<linear/linear/num-of-doors/num-of-doors_weights/Slice_2/size*
T0*
_output_shapes
:*
Index0
}
;linear/linear/num-of-doors/num-of-doors_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
«
6linear/linear/num-of-doors/num-of-doors_weights/concatConcatV27linear/linear/num-of-doors/num-of-doors_weights/Slice_17linear/linear/num-of-doors/num-of-doors_weights/Slice_2;linear/linear/num-of-doors/num-of-doors_weights/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N
ķ
9linear/linear/num-of-doors/num-of-doors_weights/Reshape_2Reshape/linear/linear/num-of-doors/num-of-doors_weights6linear/linear/num-of-doors/num-of-doors_weights/concat*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
n
linear/linear/Reshape_6/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
¼
linear/linear/Reshape_6Reshape9linear/linear/num-of-doors/num-of-doors_weights/Reshape_2linear/linear/Reshape_6/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0

linear/linear/AddNAddNlinear/linear/Reshapelinear/linear/Reshape_1linear/linear/Reshape_2linear/linear/Reshape_3linear/linear/Reshape_4linear/linear/Reshape_5linear/linear/Reshape_6*
T0*'
_output_shapes
:’’’’’’’’’*
N
¦
+linear/bias_weight/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *,
_class"
 loc:@linear/bias_weight/part_0
³
linear/bias_weight/part_0
VariableV2*
	container *,
_class"
 loc:@linear/bias_weight/part_0*
dtype0*
_output_shapes
:*
shape:*
shared_name 
ī
 linear/bias_weight/part_0/AssignAssignlinear/bias_weight/part_0+linear/bias_weight/part_0/Initializer/zeros*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@linear/bias_weight/part_0

linear/bias_weight/part_0/readIdentitylinear/bias_weight/part_0*
T0*
_output_shapes
:*,
_class"
 loc:@linear/bias_weight/part_0
c
linear/bias_weightIdentitylinear/bias_weight/part_0/read*
T0*
_output_shapes
:

linear/linear/BiasAddBiasAddlinear/linear/AddNlinear/bias_weight*
T0*'
_output_shapes
:’’’’’’’’’*
data_formatNHWC

)linear/regression_head/predictions/scoresSqueezelinear/linear/BiasAdd*
T0*#
_output_shapes
:’’’’’’’’’*
squeeze_dims


+linear/regression_head/predictions/IdentityIdentity)linear/regression_head/predictions/scores*
T0*#
_output_shapes
:’’’’’’’’’

7linear/regression_head/mean_squared_loss/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
Ņ
3linear/regression_head/mean_squared_loss/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:87linear/regression_head/mean_squared_loss/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0
±
,linear/regression_head/mean_squared_loss/subSublinear/linear/BiasAdd3linear/regression_head/mean_squared_loss/ExpandDims*
T0*'
_output_shapes
:’’’’’’’’’

(linear/regression_head/mean_squared_lossSquare,linear/regression_head/mean_squared_loss/sub*
T0*'
_output_shapes
:’’’’’’’’’

3linear/regression_head/mean_squared_loss/loss/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Ņ
-linear/regression_head/mean_squared_loss/lossMean(linear/regression_head/mean_squared_loss3linear/regression_head/mean_squared_loss/loss/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
n
)linear/regression_head/ScalarSummary/tagsConst*
dtype0*
_output_shapes
: *
valueB
 Bloss
°
$linear/regression_head/ScalarSummaryScalarSummary)linear/regression_head/ScalarSummary/tags-linear/regression_head/mean_squared_loss/loss*
T0*
_output_shapes
: 
n
)linear/regression_head/metrics/mean/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    

)linear/regression_head/metrics/mean/total
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 

0linear/regression_head/metrics/mean/total/AssignAssign)linear/regression_head/metrics/mean/total)linear/regression_head/metrics/mean/zeros*
T0*
_output_shapes
: *
validate_shape(*
use_locking(*<
_class2
0.loc:@linear/regression_head/metrics/mean/total
Ä
.linear/regression_head/metrics/mean/total/readIdentity)linear/regression_head/metrics/mean/total*
T0*
_output_shapes
: *<
_class2
0.loc:@linear/regression_head/metrics/mean/total
p
+linear/regression_head/metrics/mean/zeros_1Const*
dtype0*
_output_shapes
: *
valueB
 *    

)linear/regression_head/metrics/mean/count
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 

0linear/regression_head/metrics/mean/count/AssignAssign)linear/regression_head/metrics/mean/count+linear/regression_head/metrics/mean/zeros_1*
T0*
_output_shapes
: *
validate_shape(*
use_locking(*<
_class2
0.loc:@linear/regression_head/metrics/mean/count
Ä
.linear/regression_head/metrics/mean/count/readIdentity)linear/regression_head/metrics/mean/count*
T0*
_output_shapes
: *<
_class2
0.loc:@linear/regression_head/metrics/mean/count
j
(linear/regression_head/metrics/mean/SizeConst*
dtype0*
_output_shapes
: *
value	B :

-linear/regression_head/metrics/mean/ToFloat_1Cast(linear/regression_head/metrics/mean/Size*

SrcT0*
_output_shapes
: *

DstT0
l
)linear/regression_head/metrics/mean/ConstConst*
dtype0*
_output_shapes
: *
valueB 
Ę
'linear/regression_head/metrics/mean/SumSum-linear/regression_head/mean_squared_loss/loss)linear/regression_head/metrics/mean/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 

-linear/regression_head/metrics/mean/AssignAdd	AssignAdd)linear/regression_head/metrics/mean/total'linear/regression_head/metrics/mean/Sum*
T0*
_output_shapes
: *
use_locking( *<
_class2
0.loc:@linear/regression_head/metrics/mean/total
ø
/linear/regression_head/metrics/mean/AssignAdd_1	AssignAdd)linear/regression_head/metrics/mean/count-linear/regression_head/metrics/mean/ToFloat_1.^linear/regression_head/mean_squared_loss/loss*
T0*
_output_shapes
: *
use_locking( *<
_class2
0.loc:@linear/regression_head/metrics/mean/count
r
-linear/regression_head/metrics/mean/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
¶
+linear/regression_head/metrics/mean/GreaterGreater.linear/regression_head/metrics/mean/count/read-linear/regression_head/metrics/mean/Greater/y*
T0*
_output_shapes
: 
·
+linear/regression_head/metrics/mean/truedivRealDiv.linear/regression_head/metrics/mean/total/read.linear/regression_head/metrics/mean/count/read*
T0*
_output_shapes
: 
p
+linear/regression_head/metrics/mean/value/eConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ū
)linear/regression_head/metrics/mean/valueSelect+linear/regression_head/metrics/mean/Greater+linear/regression_head/metrics/mean/truediv+linear/regression_head/metrics/mean/value/e*
T0*
_output_shapes
: 
t
/linear/regression_head/metrics/mean/Greater_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
»
-linear/regression_head/metrics/mean/Greater_1Greater/linear/regression_head/metrics/mean/AssignAdd_1/linear/regression_head/metrics/mean/Greater_1/y*
T0*
_output_shapes
: 
¹
-linear/regression_head/metrics/mean/truediv_1RealDiv-linear/regression_head/metrics/mean/AssignAdd/linear/regression_head/metrics/mean/AssignAdd_1*
T0*
_output_shapes
: 
t
/linear/regression_head/metrics/mean/update_op/eConst*
dtype0*
_output_shapes
: *
valueB
 *    
ē
-linear/regression_head/metrics/mean/update_opSelect-linear/regression_head/metrics/mean/Greater_1-linear/regression_head/metrics/mean/truediv_1/linear/regression_head/metrics/mean/update_op/e*
T0*
_output_shapes
: 
B

group_depsNoOp.^linear/regression_head/metrics/mean/update_op
{
eval_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
loc:@eval_step

	eval_step
VariableV2*
	container *
_class
loc:@eval_step*
dtype0	*
_output_shapes
: *
shape: *
shared_name 
Ŗ
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
T0	*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@eval_step
d
eval_step/readIdentity	eval_step*
T0	*
_output_shapes
: *
_class
loc:@eval_step
Q
AssignAdd/valueConst*
dtype0	*
_output_shapes
: *
value	B	 R

	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
T0	*
_output_shapes
: *
use_locking( *
_class
loc:@eval_step
Ū
initNoOp^global_step/Assign#^linear/height/weight/part_0/Assign'^linear/horsepower/weight/part_0/Assign#^linear/length/weight/part_0/Assign"^linear/width/weight/part_0/Assign"^linear/make/weights/part_0/Assign.^linear/num-of-cylinders/weights/part_0/Assign*^linear/num-of-doors/weights/part_0/Assign!^linear/bias_weight/part_0/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1

4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
Į
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedlinear/height/weight/part_0*
dtype0*
_output_shapes
: *.
_class$
" loc:@linear/height/weight/part_0
É
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedlinear/horsepower/weight/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@linear/horsepower/weight/part_0
Į
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedlinear/length/weight/part_0*
dtype0*
_output_shapes
: *.
_class$
" loc:@linear/length/weight/part_0
æ
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedlinear/width/weight/part_0*
dtype0*
_output_shapes
: *-
_class#
!loc:@linear/width/weight/part_0
æ
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedlinear/make/weights/part_0*
dtype0*
_output_shapes
: *-
_class#
!loc:@linear/make/weights/part_0
×
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitialized&linear/num-of-cylinders/weights/part_0*
dtype0*
_output_shapes
: *9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0
Ļ
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitialized"linear/num-of-doors/weights/part_0*
dtype0*
_output_shapes
: *5
_class+
)'loc:@linear/num-of-doors/weights/part_0
½
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedlinear/bias_weight/part_0*
dtype0*
_output_shapes
: *,
_class"
 loc:@linear/bias_weight/part_0
Ż
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitialized)linear/regression_head/metrics/mean/total*
dtype0*
_output_shapes
: *<
_class2
0.loc:@linear/regression_head/metrics/mean/total
Ž
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitialized)linear/regression_head/metrics/mean/count*
dtype0*
_output_shapes
: *<
_class2
0.loc:@linear/regression_head/metrics/mean/count

7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitialized	eval_step*
dtype0	*
_output_shapes
: *
_class
loc:@eval_step

$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_11*
T0
*
_output_shapes
:*
N*

axis 
y
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack*
_output_shapes
:
Ö
$report_uninitialized_variables/ConstConst*
dtype0*
_output_shapes
:*ż
valueóBšBglobal_stepBlinear/height/weight/part_0Blinear/horsepower/weight/part_0Blinear/length/weight/part_0Blinear/width/weight/part_0Blinear/make/weights/part_0B&linear/num-of-cylinders/weights/part_0B"linear/num-of-doors/weights/part_0Blinear/bias_weight/part_0B)linear/regression_head/metrics/mean/totalB)linear/regression_head/metrics/mean/countB	eval_step
{
1report_uninitialized_variables/boolean_mask/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

?report_uninitialized_variables/boolean_mask/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ł
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
:*

begin_mask*
Index0

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
õ
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
}
3report_uninitialized_variables/boolean_mask/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
į
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
: *

begin_mask *
Index0
Æ
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod*
T0*
_output_shapes
:*
N*

axis 
y
7report_uninitialized_variables/boolean_mask/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
«
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N
Ė
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat*
T0*
_output_shapes
:*
Tshape0

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Ū
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape*
T0
*
_output_shapes
:*
Tshape0

1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1*'
_output_shapes
:’’’’’’’’’
¶
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where*
T0	*#
_output_shapes
:’’’’’’’’’*
squeeze_dims


2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*
Tindices0	
g
$report_uninitialized_resources/ConstConst*
dtype0*
_output_shapes
: *
valueB 
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
¼
concatConcatV22report_uninitialized_variables/boolean_mask/Gather$report_uninitialized_resources/Constconcat/axis*

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’*
N
”
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
Ć
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedlinear/height/weight/part_0*
dtype0*
_output_shapes
: *.
_class$
" loc:@linear/height/weight/part_0
Ė
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedlinear/horsepower/weight/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@linear/horsepower/weight/part_0
Ć
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedlinear/length/weight/part_0*
dtype0*
_output_shapes
: *.
_class$
" loc:@linear/length/weight/part_0
Į
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedlinear/width/weight/part_0*
dtype0*
_output_shapes
: *-
_class#
!loc:@linear/width/weight/part_0
Į
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedlinear/make/weights/part_0*
dtype0*
_output_shapes
: *-
_class#
!loc:@linear/make/weights/part_0
Ł
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitialized&linear/num-of-cylinders/weights/part_0*
dtype0*
_output_shapes
: *9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0
Ń
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitialized"linear/num-of-doors/weights/part_0*
dtype0*
_output_shapes
: *5
_class+
)'loc:@linear/num-of-doors/weights/part_0
æ
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedlinear/bias_weight/part_0*
dtype0*
_output_shapes
: *,
_class"
 loc:@linear/bias_weight/part_0
š
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_8*
T0
*
_output_shapes
:	*
N	*

axis 
}
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack*
_output_shapes
:	
÷
&report_uninitialized_variables_1/ConstConst*
dtype0*
_output_shapes
:	*
valueB	Bglobal_stepBlinear/height/weight/part_0Blinear/horsepower/weight/part_0Blinear/length/weight/part_0Blinear/width/weight/part_0Blinear/make/weights/part_0B&linear/num-of-cylinders/weights/part_0B"linear/num-of-doors/weights/part_0Blinear/bias_weight/part_0
}
3report_uninitialized_variables_1/boolean_mask/ShapeConst*
dtype0*
_output_shapes
:*
valueB:	

Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ć
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
:*

begin_mask*
Index0

Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
ū
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 

5report_uninitialized_variables_1/boolean_mask/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:	

Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ė
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
: *

begin_mask *
Index0
³
=report_uninitialized_variables_1/boolean_mask/concat/values_0Pack2report_uninitialized_variables_1/boolean_mask/Prod*
T0*
_output_shapes
:*
N*

axis 
{
9report_uninitialized_variables_1/boolean_mask/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
³
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/concat/values_0=report_uninitialized_variables_1/boolean_mask/strided_slice_19report_uninitialized_variables_1/boolean_mask/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N
Ń
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat*
T0*
_output_shapes
:	*
Tshape0

=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
į
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape*
T0
*
_output_shapes
:	*
Tshape0

3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1*'
_output_shapes
:’’’’’’’’’
ŗ
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where*
T0	*#
_output_shapes
:’’’’’’’’’*
squeeze_dims


4report_uninitialized_variables_1/boolean_mask/GatherGather5report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*
Tindices0	

init_2NoOp1^linear/regression_head/metrics/mean/total/Assign1^linear/regression_head/metrics/mean/count/Assign^eval_step/Assign
u
init_all_tablesNoOp-^linear/linear/lookup_1/hash_table/table_init-^linear/linear/lookup_2/hash_table/table_init
/
group_deps_2NoOp^init_2^init_all_tables
³
Merge/MergeSummaryMergeSummaryHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full$linear/regression_head/ScalarSummary*
_output_shapes
: *
N
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_9a56e091c8224634b6abb77630f42bc0/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
\
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
±
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:	*ä
valueŚB×	Bglobal_stepBlinear/bias_weightBlinear/height/weightBlinear/horsepower/weightBlinear/length/weightBlinear/make/weightsBlinear/num-of-cylinders/weightsBlinear/num-of-doors/weightsBlinear/width/weight
É
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:	*y
valuepBn	B B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B50 1 0,50:0,1B7 1 0,7:0,1B2 1 0,2:0,1B1 1 0,1:0,1
«
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_steplinear/bias_weight/part_0/read linear/height/weight/part_0/read$linear/horsepower/weight/part_0/read linear/length/weight/part_0/readlinear/make/weights/part_0/read+linear/num-of-cylinders/weights/part_0/read'linear/num-of-doors/weights/part_0/readlinear/width/weight/part_0/read*
dtypes
2		

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*
_output_shapes
:*
N*

axis 
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBglobal_step
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2	

save/AssignAssignglobal_stepsave/RestoreV2*
T0	*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@global_step
x
save/RestoreV2_1/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBlinear/bias_weight
o
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB1 0,1

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
Ą
save/Assign_1Assignlinear/bias_weight/part_0save/RestoreV2_1*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@linear/bias_weight/part_0
z
save/RestoreV2_2/tensor_namesConst*
dtype0*
_output_shapes
:*)
value BBlinear/height/weight
u
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
Č
save/Assign_2Assignlinear/height/weight/part_0save/RestoreV2_2*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*.
_class$
" loc:@linear/height/weight/part_0
~
save/RestoreV2_3/tensor_namesConst*
dtype0*
_output_shapes
:*-
value$B"Blinear/horsepower/weight
u
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
Š
save/Assign_3Assignlinear/horsepower/weight/part_0save/RestoreV2_3*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*2
_class(
&$loc:@linear/horsepower/weight/part_0
z
save/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:*)
value BBlinear/length/weight
u
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
Č
save/Assign_4Assignlinear/length/weight/part_0save/RestoreV2_4*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*.
_class$
" loc:@linear/length/weight/part_0
y
save/RestoreV2_5/tensor_namesConst*
dtype0*
_output_shapes
:*(
valueBBlinear/make/weights
w
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*"
valueBB50 1 0,50:0,1

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
Ę
save/Assign_5Assignlinear/make/weights/part_0save/RestoreV2_5*
T0*
_output_shapes

:2*
validate_shape(*
use_locking(*-
_class#
!loc:@linear/make/weights/part_0

save/RestoreV2_6/tensor_namesConst*
dtype0*
_output_shapes
:*4
value+B)Blinear/num-of-cylinders/weights
u
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB7 1 0,7:0,1

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
Ž
save/Assign_6Assign&linear/num-of-cylinders/weights/part_0save/RestoreV2_6*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0

save/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*0
value'B%Blinear/num-of-doors/weights
u
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB2 1 0,2:0,1

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
Ö
save/Assign_7Assign"linear/num-of-doors/weights/part_0save/RestoreV2_7*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*5
_class+
)'loc:@linear/num-of-doors/weights/part_0
y
save/RestoreV2_8/tensor_namesConst*
dtype0*
_output_shapes
:*(
valueBBlinear/width/weight
u
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
Ę
save/Assign_8Assignlinear/width/weight/part_0save/RestoreV2_8*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*-
_class#
!loc:@linear/width/weight/part_0
Ø
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard"ä51     nN	ÓüŃ¤PÖAJ÷
é-Ć-
9
Add
x"T
y"T
z"T"
Ttype:
2	
S
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
p
	AssignAdd
ref"T

value"T

output_ref"T"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
®
FIFOQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint’’’’’’’’’"
	containerstring "
shared_namestring 
4
Fill
dims

value"T
output"T"	
Ttype

Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
:
Greater
x"T
y"T
z
"
Ttype:
2		
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
¢
	HashTable
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Identity

input"T
output"T"	
Ttype
`
InitializeTable
table_handle
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
\
ListDiff
x"T
y"T
out"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	


LogicalNot
x

y

u
LookupTableFind
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
D
NotEqual
x"T
y"T
z
"
Ttype:
2	

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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
B
QueueCloseV2

handle"#
cancel_pending_enqueuesbool( 

QueueDequeueUpToV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint’’’’’’’’’
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint’’’’’’’’’
&
QueueSizeV2

handle
size
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
y
SparseReorder
input_indices	
input_values"T
input_shape	
output_indices	
output_values"T"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	

SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2		"
Tidxtype0:
2	
¼
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
0
Square
x"T
y"T"
Ttype:
	2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 

Where	
input
	
index	
&
	ZerosLike
x"T
y"T"	
Ttype*	1.2.0-rc12v1.2.0-rc0-24-g94484aaōŗ

global_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
loc:@global_step

global_step
VariableV2*
	container *
_class
loc:@global_step*
dtype0	*
_output_shapes
: *
shape: *
shared_name 
²
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_output_shapes
: *
_class
loc:@global_step
¶
enqueue_input/fifo_queueFIFOQueueV2*
	container *
_output_shapes
: *
shapes
: : : : : : : : : * 
component_types
2		*
capacityč*
shared_name 
^
enqueue_input/PlaceholderPlaceholder*
dtype0	*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_1Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_2Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_3Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_4Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_5Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_6Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_7Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_8Placeholder*
dtype0*
_output_shapes
:*
shape:

$enqueue_input/fifo_queue_EnqueueManyQueueEnqueueManyV2enqueue_input/fifo_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2enqueue_input/Placeholder_3enqueue_input/Placeholder_4enqueue_input/Placeholder_5enqueue_input/Placeholder_6enqueue_input/Placeholder_7enqueue_input/Placeholder_8*
Tcomponents
2		*

timeout_ms’’’’’’’’’
g
enqueue_input/fifo_queue_CloseQueueCloseV2enqueue_input/fifo_queue*
cancel_pending_enqueues( 
i
 enqueue_input/fifo_queue_Close_1QueueCloseV2enqueue_input/fifo_queue*
cancel_pending_enqueues(
^
enqueue_input/fifo_queue_SizeQueueSizeV2enqueue_input/fifo_queue*
_output_shapes
: 
U
enqueue_input/sub/yConst*
dtype0*
_output_shapes
: *
value	B : 
m
enqueue_input/subSubenqueue_input/fifo_queue_Sizeenqueue_input/sub/y*
T0*
_output_shapes
: 
Y
enqueue_input/Maximum/xConst*
dtype0*
_output_shapes
: *
value	B : 
m
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub*
T0*
_output_shapes
: 
a
enqueue_input/CastCastenqueue_input/Maximum*

SrcT0*
_output_shapes
: *

DstT0
X
enqueue_input/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *o:
b
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y*
T0*
_output_shapes
: 
Ö
Menqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsConst*
dtype0*
_output_shapes
: *Y
valuePBN BHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full
Ü
Henqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_fullScalarSummaryMenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsenqueue_input/mul*
T0*
_output_shapes
: 
Z
fifo_queue_DequeueUpTo/nConst*
dtype0*
_output_shapes
: *
value	B :
½
fifo_queue_DequeueUpToQueueDequeueUpToV2enqueue_input/fifo_queuefifo_queue_DequeueUpTo/n*
_output_shapes
:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*

timeout_ms’’’’’’’’’* 
component_types
2		
n
#linear/linear/height/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
Ŗ
linear/linear/height/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:6#linear/linear/height/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0
²
-linear/height/weight/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *.
_class$
" loc:@linear/height/weight/part_0
æ
linear/height/weight/part_0
VariableV2*
	container *.
_class$
" loc:@linear/height/weight/part_0*
dtype0*
_output_shapes

:*
shape
:*
shared_name 
ś
"linear/height/weight/part_0/AssignAssignlinear/height/weight/part_0-linear/height/weight/part_0/Initializer/zeros*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*.
_class$
" loc:@linear/height/weight/part_0
¢
 linear/height/weight/part_0/readIdentitylinear/height/weight/part_0*
T0*
_output_shapes

:*.
_class$
" loc:@linear/height/weight/part_0
k
linear/height/weightIdentity linear/height/weight/part_0/read*
T0*
_output_shapes

:
“
linear/linear/height/matmulMatMullinear/linear/height/ExpandDimslinear/height/weight*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
l
linear/linear/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   

linear/linear/ReshapeReshapelinear/linear/height/matmullinear/linear/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
r
'linear/linear/horsepower/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
²
#linear/linear/horsepower/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:3'linear/linear/horsepower/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0
ŗ
1linear/horsepower/weight/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *2
_class(
&$loc:@linear/horsepower/weight/part_0
Ē
linear/horsepower/weight/part_0
VariableV2*
	container *2
_class(
&$loc:@linear/horsepower/weight/part_0*
dtype0*
_output_shapes

:*
shape
:*
shared_name 

&linear/horsepower/weight/part_0/AssignAssignlinear/horsepower/weight/part_01linear/horsepower/weight/part_0/Initializer/zeros*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*2
_class(
&$loc:@linear/horsepower/weight/part_0
®
$linear/horsepower/weight/part_0/readIdentitylinear/horsepower/weight/part_0*
T0*
_output_shapes

:*2
_class(
&$loc:@linear/horsepower/weight/part_0
s
linear/horsepower/weightIdentity$linear/horsepower/weight/part_0/read*
T0*
_output_shapes

:
Ą
linear/linear/horsepower/matmulMatMul#linear/linear/horsepower/ExpandDimslinear/horsepower/weight*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
n
linear/linear/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
¢
linear/linear/Reshape_1Reshapelinear/linear/horsepower/matmullinear/linear/Reshape_1/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
n
#linear/linear/length/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
Ŗ
linear/linear/length/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:5#linear/linear/length/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0
²
-linear/length/weight/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *.
_class$
" loc:@linear/length/weight/part_0
æ
linear/length/weight/part_0
VariableV2*
	container *.
_class$
" loc:@linear/length/weight/part_0*
dtype0*
_output_shapes

:*
shape
:*
shared_name 
ś
"linear/length/weight/part_0/AssignAssignlinear/length/weight/part_0-linear/length/weight/part_0/Initializer/zeros*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*.
_class$
" loc:@linear/length/weight/part_0
¢
 linear/length/weight/part_0/readIdentitylinear/length/weight/part_0*
T0*
_output_shapes

:*.
_class$
" loc:@linear/length/weight/part_0
k
linear/length/weightIdentity linear/length/weight/part_0/read*
T0*
_output_shapes

:
“
linear/linear/length/matmulMatMullinear/linear/length/ExpandDimslinear/length/weight*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
n
linear/linear/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   

linear/linear/Reshape_2Reshapelinear/linear/length/matmullinear/linear/Reshape_2/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
m
"linear/linear/width/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
Ø
linear/linear/width/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:7"linear/linear/width/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0
°
,linear/width/weight/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *-
_class#
!loc:@linear/width/weight/part_0
½
linear/width/weight/part_0
VariableV2*
	container *-
_class#
!loc:@linear/width/weight/part_0*
dtype0*
_output_shapes

:*
shape
:*
shared_name 
ö
!linear/width/weight/part_0/AssignAssignlinear/width/weight/part_0,linear/width/weight/part_0/Initializer/zeros*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*-
_class#
!loc:@linear/width/weight/part_0

linear/width/weight/part_0/readIdentitylinear/width/weight/part_0*
T0*
_output_shapes

:*-
_class#
!loc:@linear/width/weight/part_0
i
linear/width/weightIdentitylinear/width/weight/part_0/read*
T0*
_output_shapes

:
±
linear/linear/width/matmulMatMullinear/linear/width/ExpandDimslinear/width/weight*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
n
linear/linear/Reshape_3/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   

linear/linear/Reshape_3Reshapelinear/linear/width/matmullinear/linear/Reshape_3/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
h
linear/linear/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’

linear/linear/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:4linear/linear/expand_dims/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0

'linear/linear/DenseToSparseTensor/ShapeShapelinear/linear/expand_dims*
T0*
out_type0*
_output_shapes
:

&linear/linear/DenseToSparseTensor/CastCast'linear/linear/DenseToSparseTensor/Shape*

SrcT0*
_output_shapes
:*

DstT0	
k
*linear/linear/DenseToSparseTensor/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB B 
Æ
*linear/linear/DenseToSparseTensor/NotEqualNotEquallinear/linear/expand_dims*linear/linear/DenseToSparseTensor/Cast_1/x*
T0*'
_output_shapes
:’’’’’’’’’

'linear/linear/DenseToSparseTensor/WhereWhere*linear/linear/DenseToSparseTensor/NotEqual*'
_output_shapes
:’’’’’’’’’

/linear/linear/DenseToSparseTensor/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
¼
)linear/linear/DenseToSparseTensor/ReshapeReshapelinear/linear/expand_dims/linear/linear/DenseToSparseTensor/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’*
Tshape0

5linear/linear/DenseToSparseTensor/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"       

7linear/linear/DenseToSparseTensor/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

7linear/linear/DenseToSparseTensor/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
°
/linear/linear/DenseToSparseTensor/strided_sliceStridedSlice'linear/linear/DenseToSparseTensor/Where5linear/linear/DenseToSparseTensor/strided_slice/stack7linear/linear/DenseToSparseTensor/strided_slice/stack_17linear/linear/DenseToSparseTensor/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

7linear/linear/DenseToSparseTensor/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        

9linear/linear/DenseToSparseTensor/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

9linear/linear/DenseToSparseTensor/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
¼
1linear/linear/DenseToSparseTensor/strided_slice_1StridedSlice'linear/linear/DenseToSparseTensor/Where7linear/linear/DenseToSparseTensor/strided_slice_1/stack9linear/linear/DenseToSparseTensor/strided_slice_1/stack_19linear/linear/DenseToSparseTensor/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*'
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

)linear/linear/DenseToSparseTensor/unstackUnpack&linear/linear/DenseToSparseTensor/Cast*
T0	*	
num*
_output_shapes
: : *

axis 

'linear/linear/DenseToSparseTensor/stackPack+linear/linear/DenseToSparseTensor/unstack:1*
T0	*
_output_shapes
:*
N*

axis 
ŗ
%linear/linear/DenseToSparseTensor/MulMul1linear/linear/DenseToSparseTensor/strided_slice_1'linear/linear/DenseToSparseTensor/stack*
T0	*'
_output_shapes
:’’’’’’’’’

7linear/linear/DenseToSparseTensor/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
×
%linear/linear/DenseToSparseTensor/SumSum%linear/linear/DenseToSparseTensor/Mul7linear/linear/DenseToSparseTensor/Sum/reduction_indices*

Tidx0*
T0	*#
_output_shapes
:’’’’’’’’’*
	keep_dims( 
²
%linear/linear/DenseToSparseTensor/AddAdd/linear/linear/DenseToSparseTensor/strided_slice%linear/linear/DenseToSparseTensor/Sum*
T0	*#
_output_shapes
:’’’’’’’’’
ą
(linear/linear/DenseToSparseTensor/GatherGather)linear/linear/DenseToSparseTensor/Reshape%linear/linear/DenseToSparseTensor/Add*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*
Tindices0	

linear/linear/lookupStringToHashBucketFast(linear/linear/DenseToSparseTensor/Gather*
num_buckets2*#
_output_shapes
:’’’’’’’’’
°
,linear/make/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:2*
valueB2*    *-
_class#
!loc:@linear/make/weights/part_0
½
linear/make/weights/part_0
VariableV2*
	container *-
_class#
!loc:@linear/make/weights/part_0*
dtype0*
_output_shapes

:2*
shape
:2*
shared_name 
ö
!linear/make/weights/part_0/AssignAssignlinear/make/weights/part_0,linear/make/weights/part_0/Initializer/zeros*
T0*
_output_shapes

:2*
validate_shape(*
use_locking(*-
_class#
!loc:@linear/make/weights/part_0

linear/make/weights/part_0/readIdentitylinear/make/weights/part_0*
T0*
_output_shapes

:2*-
_class#
!loc:@linear/make/weights/part_0
u
+linear/linear/make/make_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
t
*linear/linear/make/make_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
į
%linear/linear/make/make_weights/SliceSlice&linear/linear/DenseToSparseTensor/Cast+linear/linear/make/make_weights/Slice/begin*linear/linear/make/make_weights/Slice/size*
T0	*
_output_shapes
:*
Index0
o
%linear/linear/make/make_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
ø
$linear/linear/make/make_weights/ProdProd%linear/linear/make/make_weights/Slice%linear/linear/make/make_weights/Const*

Tidx0*
T0	*
_output_shapes
: *
	keep_dims( 
p
.linear/linear/make/make_weights/Gather/indicesConst*
dtype0*
_output_shapes
: *
value	B :
×
&linear/linear/make/make_weights/GatherGather&linear/linear/DenseToSparseTensor/Cast.linear/linear/make/make_weights/Gather/indices*
_output_shapes
: *
validate_indices(*
Tparams0	*
Tindices0
¶
&linear/linear/make/make_weights/Cast/xPack$linear/linear/make/make_weights/Prod&linear/linear/make/make_weights/Gather*
T0	*
_output_shapes
:*
N*

axis 
ę
-linear/linear/make/make_weights/SparseReshapeSparseReshape'linear/linear/DenseToSparseTensor/Where&linear/linear/DenseToSparseTensor/Cast&linear/linear/make/make_weights/Cast/x*-
_output_shapes
:’’’’’’’’’:

6linear/linear/make/make_weights/SparseReshape/IdentityIdentitylinear/linear/lookup*
T0	*#
_output_shapes
:’’’’’’’’’
p
.linear/linear/make/make_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
Ņ
,linear/linear/make/make_weights/GreaterEqualGreaterEqual6linear/linear/make/make_weights/SparseReshape/Identity.linear/linear/make/make_weights/GreaterEqual/y*
T0	*#
_output_shapes
:’’’’’’’’’

%linear/linear/make/make_weights/WhereWhere,linear/linear/make/make_weights/GreaterEqual*'
_output_shapes
:’’’’’’’’’

-linear/linear/make/make_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Ä
'linear/linear/make/make_weights/ReshapeReshape%linear/linear/make/make_weights/Where-linear/linear/make/make_weights/Reshape/shape*
T0	*#
_output_shapes
:’’’’’’’’’*
Tshape0
ź
(linear/linear/make/make_weights/Gather_1Gather-linear/linear/make/make_weights/SparseReshape'linear/linear/make/make_weights/Reshape*'
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0	*
Tindices0	
ļ
(linear/linear/make/make_weights/Gather_2Gather6linear/linear/make/make_weights/SparseReshape/Identity'linear/linear/make/make_weights/Reshape*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0	*
Tindices0	

(linear/linear/make/make_weights/IdentityIdentity/linear/linear/make/make_weights/SparseReshape:1*
T0	*
_output_shapes
:
{
9linear/linear/make/make_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 

Glinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Ilinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Ilinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ģ
Alinear/linear/make/make_weights/SparseFillEmptyRows/strided_sliceStridedSlice(linear/linear/make/make_weights/IdentityGlinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice/stackIlinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice/stack_1Ilinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*
_output_shapes
: *

begin_mask *
Index0
³
8linear/linear/make/make_weights/SparseFillEmptyRows/CastCastAlinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice*

SrcT0	*
_output_shapes
: *

DstT0

?linear/linear/make/make_weights/SparseFillEmptyRows/range/startConst*
dtype0*
_output_shapes
: *
value	B : 

?linear/linear/make/make_weights/SparseFillEmptyRows/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Æ
9linear/linear/make/make_weights/SparseFillEmptyRows/rangeRange?linear/linear/make/make_weights/SparseFillEmptyRows/range/start8linear/linear/make/make_weights/SparseFillEmptyRows/Cast?linear/linear/make/make_weights/SparseFillEmptyRows/range/delta*

Tidx0*#
_output_shapes
:’’’’’’’’’
ŗ
:linear/linear/make/make_weights/SparseFillEmptyRows/Cast_1Cast9linear/linear/make/make_weights/SparseFillEmptyRows/range*

SrcT0*#
_output_shapes
:’’’’’’’’’*

DstT0	

Ilinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        

Klinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

Klinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      

Clinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1StridedSlice(linear/linear/make/make_weights/Gather_1Ilinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1/stackKlinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1/stack_1Klinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

<linear/linear/make/make_weights/SparseFillEmptyRows/ListDiffListDiff:linear/linear/make/make_weights/SparseFillEmptyRows/Cast_1Clinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
out_idx0

Ilinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Klinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Klinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ō
Clinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2StridedSlice(linear/linear/make/make_weights/IdentityIlinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2/stackKlinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2/stack_1Klinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*
_output_shapes
: *

begin_mask *
Index0

Blinear/linear/make/make_weights/SparseFillEmptyRows/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’

>linear/linear/make/make_weights/SparseFillEmptyRows/ExpandDims
ExpandDimsClinear/linear/make/make_weights/SparseFillEmptyRows/strided_slice_2Blinear/linear/make/make_weights/SparseFillEmptyRows/ExpandDims/dim*
T0	*
_output_shapes
:*

Tdim0

Olinear/linear/make/make_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesConst*
dtype0
*
_output_shapes
: *
value	B
 Z

Olinear/linear/make/make_weights/SparseFillEmptyRows/SparseToDense/default_valueConst*
dtype0
*
_output_shapes
: *
value	B
 Z 
Č
Alinear/linear/make/make_weights/SparseFillEmptyRows/SparseToDenseSparseToDense<linear/linear/make/make_weights/SparseFillEmptyRows/ListDiff>linear/linear/make/make_weights/SparseFillEmptyRows/ExpandDimsOlinear/linear/make/make_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesOlinear/linear/make/make_weights/SparseFillEmptyRows/SparseToDense/default_value*
T0
*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tindices0	

Alinear/linear/make/make_weights/SparseFillEmptyRows/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   

;linear/linear/make/make_weights/SparseFillEmptyRows/ReshapeReshape<linear/linear/make/make_weights/SparseFillEmptyRows/ListDiffAlinear/linear/make/make_weights/SparseFillEmptyRows/Reshape/shape*
T0	*'
_output_shapes
:’’’’’’’’’*
Tshape0
ŗ
>linear/linear/make/make_weights/SparseFillEmptyRows/zeros_like	ZerosLike;linear/linear/make/make_weights/SparseFillEmptyRows/Reshape*
T0	*'
_output_shapes
:’’’’’’’’’

?linear/linear/make/make_weights/SparseFillEmptyRows/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
Ė
:linear/linear/make/make_weights/SparseFillEmptyRows/concatConcatV2;linear/linear/make/make_weights/SparseFillEmptyRows/Reshape>linear/linear/make/make_weights/SparseFillEmptyRows/zeros_like?linear/linear/make/make_weights/SparseFillEmptyRows/concat/axis*

Tidx0*
T0	*'
_output_shapes
:’’’’’’’’’*
N
µ
9linear/linear/make/make_weights/SparseFillEmptyRows/ShapeShape<linear/linear/make/make_weights/SparseFillEmptyRows/ListDiff*
T0	*
out_type0*
_output_shapes
:
ä
8linear/linear/make/make_weights/SparseFillEmptyRows/FillFill9linear/linear/make/make_weights/SparseFillEmptyRows/Shape9linear/linear/make/make_weights/SparseFillEmptyRows/Const*
T0	*#
_output_shapes
:’’’’’’’’’

Alinear/linear/make/make_weights/SparseFillEmptyRows/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ø
<linear/linear/make/make_weights/SparseFillEmptyRows/concat_1ConcatV2(linear/linear/make/make_weights/Gather_1:linear/linear/make/make_weights/SparseFillEmptyRows/concatAlinear/linear/make/make_weights/SparseFillEmptyRows/concat_1/axis*

Tidx0*
T0	*'
_output_shapes
:’’’’’’’’’*
N

Alinear/linear/make/make_weights/SparseFillEmptyRows/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
²
<linear/linear/make/make_weights/SparseFillEmptyRows/concat_2ConcatV2(linear/linear/make/make_weights/Gather_28linear/linear/make/make_weights/SparseFillEmptyRows/FillAlinear/linear/make/make_weights/SparseFillEmptyRows/concat_2/axis*

Tidx0*
T0	*#
_output_shapes
:’’’’’’’’’*
N
¹
Alinear/linear/make/make_weights/SparseFillEmptyRows/SparseReorderSparseReorder<linear/linear/make/make_weights/SparseFillEmptyRows/concat_1<linear/linear/make/make_weights/SparseFillEmptyRows/concat_2(linear/linear/make/make_weights/Identity*
T0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’

<linear/linear/make/make_weights/SparseFillEmptyRows/IdentityIdentity(linear/linear/make/make_weights/Identity*
T0	*
_output_shapes
:

Klinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        

Mlinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

Mlinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
¢
Elinear/linear/make/make_weights/embedding_lookup_sparse/strided_sliceStridedSliceAlinear/linear/make/make_weights/SparseFillEmptyRows/SparseReorderKlinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice/stackMlinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice/stack_1Mlinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0
Č
<linear/linear/make/make_weights/embedding_lookup_sparse/CastCastElinear/linear/make/make_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:’’’’’’’’’*

DstT0
Ł
>linear/linear/make/make_weights/embedding_lookup_sparse/UniqueUniqueClinear/linear/make/make_weights/SparseFillEmptyRows/SparseReorder:1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
out_idx0
Ā
Hlinear/linear/make/make_weights/embedding_lookup_sparse/embedding_lookupGatherlinear/make/weights/part_0/read>linear/linear/make/make_weights/embedding_lookup_sparse/Unique*'
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*-
_class#
!loc:@linear/make/weights/part_0*
Tindices0	
Ó
7linear/linear/make/make_weights/embedding_lookup_sparseSparseSegmentSumHlinear/linear/make/make_weights/embedding_lookup_sparse/embedding_lookup@linear/linear/make/make_weights/embedding_lookup_sparse/Unique:1<linear/linear/make/make_weights/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:’’’’’’’’’

/linear/linear/make/make_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
č
)linear/linear/make/make_weights/Reshape_1ReshapeAlinear/linear/make/make_weights/SparseFillEmptyRows/SparseToDense/linear/linear/make/make_weights/Reshape_1/shape*
T0
*'
_output_shapes
:’’’’’’’’’*
Tshape0

%linear/linear/make/make_weights/ShapeShape7linear/linear/make/make_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
}
3linear/linear/make/make_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

5linear/linear/make/make_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

5linear/linear/make/make_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

-linear/linear/make/make_weights/strided_sliceStridedSlice%linear/linear/make/make_weights/Shape3linear/linear/make/make_weights/strided_slice/stack5linear/linear/make/make_weights/strided_slice/stack_15linear/linear/make/make_weights/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0*
_output_shapes
: *

begin_mask *
Index0
i
'linear/linear/make/make_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
æ
%linear/linear/make/make_weights/stackPack'linear/linear/make/make_weights/stack/0-linear/linear/make/make_weights/strided_slice*
T0*
_output_shapes
:*
N*

axis 
Ė
$linear/linear/make/make_weights/TileTile)linear/linear/make/make_weights/Reshape_1%linear/linear/make/make_weights/stack*
T0
*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*

Tmultiples0
¢
*linear/linear/make/make_weights/zeros_like	ZerosLike7linear/linear/make/make_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’
ę
linear/linear/make/make_weightsSelect$linear/linear/make/make_weights/Tile*linear/linear/make/make_weights/zeros_like7linear/linear/make/make_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’

&linear/linear/make/make_weights/Cast_1Cast&linear/linear/DenseToSparseTensor/Cast*

SrcT0	*
_output_shapes
:*

DstT0
w
-linear/linear/make/make_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
v
,linear/linear/make/make_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
ē
'linear/linear/make/make_weights/Slice_1Slice&linear/linear/make/make_weights/Cast_1-linear/linear/make/make_weights/Slice_1/begin,linear/linear/make/make_weights/Slice_1/size*
T0*
_output_shapes
:*
Index0

'linear/linear/make/make_weights/Shape_1Shapelinear/linear/make/make_weights*
T0*
out_type0*
_output_shapes
:
w
-linear/linear/make/make_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:

,linear/linear/make/make_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
č
'linear/linear/make/make_weights/Slice_2Slice'linear/linear/make/make_weights/Shape_1-linear/linear/make/make_weights/Slice_2/begin,linear/linear/make/make_weights/Slice_2/size*
T0*
_output_shapes
:*
Index0
m
+linear/linear/make/make_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ė
&linear/linear/make/make_weights/concatConcatV2'linear/linear/make/make_weights/Slice_1'linear/linear/make/make_weights/Slice_2+linear/linear/make/make_weights/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N
½
)linear/linear/make/make_weights/Reshape_2Reshapelinear/linear/make/make_weights&linear/linear/make/make_weights/concat*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
n
linear/linear/Reshape_4/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
¬
linear/linear/Reshape_4Reshape)linear/linear/make/make_weights/Reshape_2linear/linear/Reshape_4/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
j
linear/linear/expand_dims_1/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
¢
linear/linear/expand_dims_1
ExpandDimsfifo_queue_DequeueUpTo:2linear/linear/expand_dims_1/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0

)linear/linear/DenseToSparseTensor_1/ShapeShapelinear/linear/expand_dims_1*
T0*
out_type0*
_output_shapes
:

(linear/linear/DenseToSparseTensor_1/CastCast)linear/linear/DenseToSparseTensor_1/Shape*

SrcT0*
_output_shapes
:*

DstT0	
m
,linear/linear/DenseToSparseTensor_1/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB B 
µ
,linear/linear/DenseToSparseTensor_1/NotEqualNotEquallinear/linear/expand_dims_1,linear/linear/DenseToSparseTensor_1/Cast_1/x*
T0*'
_output_shapes
:’’’’’’’’’

)linear/linear/DenseToSparseTensor_1/WhereWhere,linear/linear/DenseToSparseTensor_1/NotEqual*'
_output_shapes
:’’’’’’’’’

1linear/linear/DenseToSparseTensor_1/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Ā
+linear/linear/DenseToSparseTensor_1/ReshapeReshapelinear/linear/expand_dims_11linear/linear/DenseToSparseTensor_1/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’*
Tshape0

7linear/linear/DenseToSparseTensor_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"       

9linear/linear/DenseToSparseTensor_1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

9linear/linear/DenseToSparseTensor_1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ŗ
1linear/linear/DenseToSparseTensor_1/strided_sliceStridedSlice)linear/linear/DenseToSparseTensor_1/Where7linear/linear/DenseToSparseTensor_1/strided_slice/stack9linear/linear/DenseToSparseTensor_1/strided_slice/stack_19linear/linear/DenseToSparseTensor_1/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

9linear/linear/DenseToSparseTensor_1/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        

;linear/linear/DenseToSparseTensor_1/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

;linear/linear/DenseToSparseTensor_1/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Ę
3linear/linear/DenseToSparseTensor_1/strided_slice_1StridedSlice)linear/linear/DenseToSparseTensor_1/Where9linear/linear/DenseToSparseTensor_1/strided_slice_1/stack;linear/linear/DenseToSparseTensor_1/strided_slice_1/stack_1;linear/linear/DenseToSparseTensor_1/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*'
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

+linear/linear/DenseToSparseTensor_1/unstackUnpack(linear/linear/DenseToSparseTensor_1/Cast*
T0	*	
num*
_output_shapes
: : *

axis 

)linear/linear/DenseToSparseTensor_1/stackPack-linear/linear/DenseToSparseTensor_1/unstack:1*
T0	*
_output_shapes
:*
N*

axis 
Ą
'linear/linear/DenseToSparseTensor_1/MulMul3linear/linear/DenseToSparseTensor_1/strided_slice_1)linear/linear/DenseToSparseTensor_1/stack*
T0	*'
_output_shapes
:’’’’’’’’’

9linear/linear/DenseToSparseTensor_1/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
Ż
'linear/linear/DenseToSparseTensor_1/SumSum'linear/linear/DenseToSparseTensor_1/Mul9linear/linear/DenseToSparseTensor_1/Sum/reduction_indices*

Tidx0*
T0	*#
_output_shapes
:’’’’’’’’’*
	keep_dims( 
ø
'linear/linear/DenseToSparseTensor_1/AddAdd1linear/linear/DenseToSparseTensor_1/strided_slice'linear/linear/DenseToSparseTensor_1/Sum*
T0	*#
_output_shapes
:’’’’’’’’’
ę
*linear/linear/DenseToSparseTensor_1/GatherGather+linear/linear/DenseToSparseTensor_1/Reshape'linear/linear/DenseToSparseTensor_1/Add*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*
Tindices0	

linear/linear/lookup_1/ConstConst*
dtype0*
_output_shapes
:*?
value6B4BeightBfiveBfourBsixBthreeBtwelveBtwo
]
linear/linear/lookup_1/SizeConst*
dtype0*
_output_shapes
: *
value	B :
d
"linear/linear/lookup_1/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
d
"linear/linear/lookup_1/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
²
linear/linear/lookup_1/rangeRange"linear/linear/lookup_1/range/startlinear/linear/lookup_1/Size"linear/linear/lookup_1/range/delta*

Tidx0*
_output_shapes
:
x
linear/linear/lookup_1/ToInt64Castlinear/linear/lookup_1/range*

SrcT0*
_output_shapes
:*

DstT0	
Æ
!linear/linear/lookup_1/hash_table	HashTable*
	container *
	key_dtype0*
use_node_name_sharing( *
_output_shapes
:*
shared_name *
value_dtype0	
r
'linear/linear/lookup_1/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
’’’’’’’’’
ī
,linear/linear/lookup_1/hash_table/table_initInitializeTable!linear/linear/lookup_1/hash_tablelinear/linear/lookup_1/Constlinear/linear/lookup_1/ToInt64*

Tval0	*

Tkey0*4
_class*
(&loc:@linear/linear/lookup_1/hash_table

linear/linear/hash_table_LookupLookupTableFind!linear/linear/lookup_1/hash_table*linear/linear/DenseToSparseTensor_1/Gather'linear/linear/lookup_1/hash_table/Const*#
_output_shapes
:’’’’’’’’’*

Tout0	*	
Tin0*4
_class*
(&loc:@linear/linear/lookup_1/hash_table
Č
8linear/num-of-cylinders/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0
Õ
&linear/num-of-cylinders/weights/part_0
VariableV2*
	container *9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0*
dtype0*
_output_shapes

:*
shape
:*
shared_name 
¦
-linear/num-of-cylinders/weights/part_0/AssignAssign&linear/num-of-cylinders/weights/part_08linear/num-of-cylinders/weights/part_0/Initializer/zeros*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0
Ć
+linear/num-of-cylinders/weights/part_0/readIdentity&linear/num-of-cylinders/weights/part_0*
T0*
_output_shapes

:*9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0

Clinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 

Blinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
«
=linear/linear/num-of-cylinders/num-of-cylinders_weights/SliceSlice(linear/linear/DenseToSparseTensor_1/CastClinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice/beginBlinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice/size*
T0	*
_output_shapes
:*
Index0

=linear/linear/num-of-cylinders/num-of-cylinders_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

<linear/linear/num-of-cylinders/num-of-cylinders_weights/ProdProd=linear/linear/num-of-cylinders/num-of-cylinders_weights/Slice=linear/linear/num-of-cylinders/num-of-cylinders_weights/Const*

Tidx0*
T0	*
_output_shapes
: *
	keep_dims( 

Flinear/linear/num-of-cylinders/num-of-cylinders_weights/Gather/indicesConst*
dtype0*
_output_shapes
: *
value	B :

>linear/linear/num-of-cylinders/num-of-cylinders_weights/GatherGather(linear/linear/DenseToSparseTensor_1/CastFlinear/linear/num-of-cylinders/num-of-cylinders_weights/Gather/indices*
_output_shapes
: *
validate_indices(*
Tparams0	*
Tindices0
ž
>linear/linear/num-of-cylinders/num-of-cylinders_weights/Cast/xPack<linear/linear/num-of-cylinders/num-of-cylinders_weights/Prod>linear/linear/num-of-cylinders/num-of-cylinders_weights/Gather*
T0	*
_output_shapes
:*
N*

axis 

Elinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseReshapeSparseReshape)linear/linear/DenseToSparseTensor_1/Where(linear/linear/DenseToSparseTensor_1/Cast>linear/linear/num-of-cylinders/num-of-cylinders_weights/Cast/x*-
_output_shapes
:’’’’’’’’’:
©
Nlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseReshape/IdentityIdentitylinear/linear/hash_table_Lookup*
T0	*#
_output_shapes
:’’’’’’’’’

Flinear/linear/num-of-cylinders/num-of-cylinders_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 

Dlinear/linear/num-of-cylinders/num-of-cylinders_weights/GreaterEqualGreaterEqualNlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseReshape/IdentityFlinear/linear/num-of-cylinders/num-of-cylinders_weights/GreaterEqual/y*
T0	*#
_output_shapes
:’’’’’’’’’
µ
=linear/linear/num-of-cylinders/num-of-cylinders_weights/WhereWhereDlinear/linear/num-of-cylinders/num-of-cylinders_weights/GreaterEqual*'
_output_shapes
:’’’’’’’’’

Elinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’

?linear/linear/num-of-cylinders/num-of-cylinders_weights/ReshapeReshape=linear/linear/num-of-cylinders/num-of-cylinders_weights/WhereElinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape/shape*
T0	*#
_output_shapes
:’’’’’’’’’*
Tshape0
²
@linear/linear/num-of-cylinders/num-of-cylinders_weights/Gather_1GatherElinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseReshape?linear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape*'
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0	*
Tindices0	
·
@linear/linear/num-of-cylinders/num-of-cylinders_weights/Gather_2GatherNlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseReshape/Identity?linear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0	*
Tindices0	
ŗ
@linear/linear/num-of-cylinders/num-of-cylinders_weights/IdentityIdentityGlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseReshape:1*
T0	*
_output_shapes
:

Qlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
©
_linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
«
alinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
«
alinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ä
Ylinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_sliceStridedSlice@linear/linear/num-of-cylinders/num-of-cylinders_weights/Identity_linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice/stackalinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice/stack_1alinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*
_output_shapes
: *

begin_mask *
Index0
ć
Plinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/CastCastYlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice*

SrcT0	*
_output_shapes
: *

DstT0

Wlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/range/startConst*
dtype0*
_output_shapes
: *
value	B : 

Wlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :

Qlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/rangeRangeWlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/range/startPlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/CastWlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/range/delta*

Tidx0*#
_output_shapes
:’’’’’’’’’
ź
Rlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/Cast_1CastQlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/range*

SrcT0*#
_output_shapes
:’’’’’’’’’*

DstT0	
²
alinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        
“
clinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
“
clinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ł
[linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1StridedSlice@linear/linear/num-of-cylinders/num-of-cylinders_weights/Gather_1alinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1/stackclinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1/stack_1clinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0
Ż
Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ListDiffListDiffRlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/Cast_1[linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
out_idx0
«
alinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB: 
­
clinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
­
clinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ģ
[linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2StridedSlice@linear/linear/num-of-cylinders/num-of-cylinders_weights/Identityalinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2/stackclinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2/stack_1clinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*
_output_shapes
: *

begin_mask *
Index0
„
Zlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
Ī
Vlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ExpandDims
ExpandDims[linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/strided_slice_2Zlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ExpandDims/dim*
T0	*
_output_shapes
:*

Tdim0
©
glinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesConst*
dtype0
*
_output_shapes
: *
value	B
 Z
©
glinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseToDense/default_valueConst*
dtype0
*
_output_shapes
: *
value	B
 Z 
Ą
Ylinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseToDenseSparseToDenseTlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ListDiffVlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ExpandDimsglinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesglinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseToDense/default_value*
T0
*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tindices0	
Ŗ
Ylinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
Ļ
Slinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ReshapeReshapeTlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ListDiffYlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/Reshape/shape*
T0	*'
_output_shapes
:’’’’’’’’’*
Tshape0
ź
Vlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/zeros_like	ZerosLikeSlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/Reshape*
T0	*'
_output_shapes
:’’’’’’’’’

Wlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
«
Rlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concatConcatV2Slinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ReshapeVlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/zeros_likeWlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat/axis*

Tidx0*
T0	*'
_output_shapes
:’’’’’’’’’*
N
å
Qlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ShapeShapeTlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ListDiff*
T0	*
out_type0*
_output_shapes
:
¬
Plinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/FillFillQlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/ShapeQlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/Const*
T0	*#
_output_shapes
:’’’’’’’’’

Ylinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 

Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_1ConcatV2@linear/linear/num-of-cylinders/num-of-cylinders_weights/Gather_1Rlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concatYlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_1/axis*

Tidx0*
T0	*'
_output_shapes
:’’’’’’’’’*
N

Ylinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 

Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_2ConcatV2@linear/linear/num-of-cylinders/num-of-cylinders_weights/Gather_2Plinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/FillYlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_2/axis*

Tidx0*
T0	*#
_output_shapes
:’’’’’’’’’*
N

Ylinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseReorderSparseReorderTlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_1Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/concat_2@linear/linear/num-of-cylinders/num-of-cylinders_weights/Identity*
T0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
Ē
Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/IdentityIdentity@linear/linear/num-of-cylinders/num-of-cylinders_weights/Identity*
T0	*
_output_shapes
:
“
clinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
¶
elinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
¶
elinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      

]linear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_sliceStridedSliceYlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseReorderclinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice/stackelinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice/stack_1elinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0
ų
Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/CastCast]linear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:’’’’’’’’’*

DstT0

Vlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/UniqueUnique[linear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseReorder:1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
out_idx0

`linear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/embedding_lookupGather+linear/num-of-cylinders/weights/part_0/readVlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/Unique*'
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0*
Tindices0	
³
Olinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparseSparseSegmentSum`linear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/embedding_lookupXlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/Unique:1Tlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:’’’’’’’’’

Glinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
°
Alinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape_1ReshapeYlinear/linear/num-of-cylinders/num-of-cylinders_weights/SparseFillEmptyRows/SparseToDenseGlinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape_1/shape*
T0
*'
_output_shapes
:’’’’’’’’’*
Tshape0
Ģ
=linear/linear/num-of-cylinders/num-of-cylinders_weights/ShapeShapeOlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:

Klinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

Mlinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Mlinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

Elinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_sliceStridedSlice=linear/linear/num-of-cylinders/num-of-cylinders_weights/ShapeKlinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice/stackMlinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice/stack_1Mlinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0*
_output_shapes
: *

begin_mask *
Index0

?linear/linear/num-of-cylinders/num-of-cylinders_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :

=linear/linear/num-of-cylinders/num-of-cylinders_weights/stackPack?linear/linear/num-of-cylinders/num-of-cylinders_weights/stack/0Elinear/linear/num-of-cylinders/num-of-cylinders_weights/strided_slice*
T0*
_output_shapes
:*
N*

axis 

<linear/linear/num-of-cylinders/num-of-cylinders_weights/TileTileAlinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape_1=linear/linear/num-of-cylinders/num-of-cylinders_weights/stack*
T0
*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*

Tmultiples0
Ņ
Blinear/linear/num-of-cylinders/num-of-cylinders_weights/zeros_like	ZerosLikeOlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’
Ę
7linear/linear/num-of-cylinders/num-of-cylinders_weightsSelect<linear/linear/num-of-cylinders/num-of-cylinders_weights/TileBlinear/linear/num-of-cylinders/num-of-cylinders_weights/zeros_likeOlinear/linear/num-of-cylinders/num-of-cylinders_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’
¤
>linear/linear/num-of-cylinders/num-of-cylinders_weights/Cast_1Cast(linear/linear/DenseToSparseTensor_1/Cast*

SrcT0	*
_output_shapes
:*

DstT0

Elinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 

Dlinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Ē
?linear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_1Slice>linear/linear/num-of-cylinders/num-of-cylinders_weights/Cast_1Elinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_1/beginDlinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_1/size*
T0*
_output_shapes
:*
Index0
¶
?linear/linear/num-of-cylinders/num-of-cylinders_weights/Shape_1Shape7linear/linear/num-of-cylinders/num-of-cylinders_weights*
T0*
out_type0*
_output_shapes
:

Elinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:

Dlinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Č
?linear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_2Slice?linear/linear/num-of-cylinders/num-of-cylinders_weights/Shape_1Elinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_2/beginDlinear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_2/size*
T0*
_output_shapes
:*
Index0

Clinear/linear/num-of-cylinders/num-of-cylinders_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ė
>linear/linear/num-of-cylinders/num-of-cylinders_weights/concatConcatV2?linear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_1?linear/linear/num-of-cylinders/num-of-cylinders_weights/Slice_2Clinear/linear/num-of-cylinders/num-of-cylinders_weights/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N

Alinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape_2Reshape7linear/linear/num-of-cylinders/num-of-cylinders_weights>linear/linear/num-of-cylinders/num-of-cylinders_weights/concat*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
n
linear/linear/Reshape_5/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
Ä
linear/linear/Reshape_5ReshapeAlinear/linear/num-of-cylinders/num-of-cylinders_weights/Reshape_2linear/linear/Reshape_5/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
j
linear/linear/expand_dims_2/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
¢
linear/linear/expand_dims_2
ExpandDimsfifo_queue_DequeueUpTo:1linear/linear/expand_dims_2/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0

)linear/linear/DenseToSparseTensor_2/ShapeShapelinear/linear/expand_dims_2*
T0*
out_type0*
_output_shapes
:

(linear/linear/DenseToSparseTensor_2/CastCast)linear/linear/DenseToSparseTensor_2/Shape*

SrcT0*
_output_shapes
:*

DstT0	
m
,linear/linear/DenseToSparseTensor_2/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB B 
µ
,linear/linear/DenseToSparseTensor_2/NotEqualNotEquallinear/linear/expand_dims_2,linear/linear/DenseToSparseTensor_2/Cast_1/x*
T0*'
_output_shapes
:’’’’’’’’’

)linear/linear/DenseToSparseTensor_2/WhereWhere,linear/linear/DenseToSparseTensor_2/NotEqual*'
_output_shapes
:’’’’’’’’’

1linear/linear/DenseToSparseTensor_2/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Ā
+linear/linear/DenseToSparseTensor_2/ReshapeReshapelinear/linear/expand_dims_21linear/linear/DenseToSparseTensor_2/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’*
Tshape0

7linear/linear/DenseToSparseTensor_2/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"       

9linear/linear/DenseToSparseTensor_2/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

9linear/linear/DenseToSparseTensor_2/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ŗ
1linear/linear/DenseToSparseTensor_2/strided_sliceStridedSlice)linear/linear/DenseToSparseTensor_2/Where7linear/linear/DenseToSparseTensor_2/strided_slice/stack9linear/linear/DenseToSparseTensor_2/strided_slice/stack_19linear/linear/DenseToSparseTensor_2/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

9linear/linear/DenseToSparseTensor_2/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        

;linear/linear/DenseToSparseTensor_2/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       

;linear/linear/DenseToSparseTensor_2/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Ę
3linear/linear/DenseToSparseTensor_2/strided_slice_1StridedSlice)linear/linear/DenseToSparseTensor_2/Where9linear/linear/DenseToSparseTensor_2/strided_slice_1/stack;linear/linear/DenseToSparseTensor_2/strided_slice_1/stack_1;linear/linear/DenseToSparseTensor_2/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*'
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0

+linear/linear/DenseToSparseTensor_2/unstackUnpack(linear/linear/DenseToSparseTensor_2/Cast*
T0	*	
num*
_output_shapes
: : *

axis 

)linear/linear/DenseToSparseTensor_2/stackPack-linear/linear/DenseToSparseTensor_2/unstack:1*
T0	*
_output_shapes
:*
N*

axis 
Ą
'linear/linear/DenseToSparseTensor_2/MulMul3linear/linear/DenseToSparseTensor_2/strided_slice_1)linear/linear/DenseToSparseTensor_2/stack*
T0	*'
_output_shapes
:’’’’’’’’’

9linear/linear/DenseToSparseTensor_2/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
Ż
'linear/linear/DenseToSparseTensor_2/SumSum'linear/linear/DenseToSparseTensor_2/Mul9linear/linear/DenseToSparseTensor_2/Sum/reduction_indices*

Tidx0*
T0	*#
_output_shapes
:’’’’’’’’’*
	keep_dims( 
ø
'linear/linear/DenseToSparseTensor_2/AddAdd1linear/linear/DenseToSparseTensor_2/strided_slice'linear/linear/DenseToSparseTensor_2/Sum*
T0	*#
_output_shapes
:’’’’’’’’’
ę
*linear/linear/DenseToSparseTensor_2/GatherGather+linear/linear/DenseToSparseTensor_2/Reshape'linear/linear/DenseToSparseTensor_2/Add*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*
Tindices0	
n
linear/linear/lookup_2/ConstConst*
dtype0*
_output_shapes
:*
valueBBtwoBfour
]
linear/linear/lookup_2/SizeConst*
dtype0*
_output_shapes
: *
value	B :
d
"linear/linear/lookup_2/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
d
"linear/linear/lookup_2/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
²
linear/linear/lookup_2/rangeRange"linear/linear/lookup_2/range/startlinear/linear/lookup_2/Size"linear/linear/lookup_2/range/delta*

Tidx0*
_output_shapes
:
x
linear/linear/lookup_2/ToInt64Castlinear/linear/lookup_2/range*

SrcT0*
_output_shapes
:*

DstT0	
Æ
!linear/linear/lookup_2/hash_table	HashTable*
	container *
	key_dtype0*
use_node_name_sharing( *
_output_shapes
:*
shared_name *
value_dtype0	
r
'linear/linear/lookup_2/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
’’’’’’’’’
ī
,linear/linear/lookup_2/hash_table/table_initInitializeTable!linear/linear/lookup_2/hash_tablelinear/linear/lookup_2/Constlinear/linear/lookup_2/ToInt64*

Tval0	*

Tkey0*4
_class*
(&loc:@linear/linear/lookup_2/hash_table

!linear/linear/hash_table_Lookup_1LookupTableFind!linear/linear/lookup_2/hash_table*linear/linear/DenseToSparseTensor_2/Gather'linear/linear/lookup_2/hash_table/Const*#
_output_shapes
:’’’’’’’’’*

Tout0	*	
Tin0*4
_class*
(&loc:@linear/linear/lookup_2/hash_table
Ą
4linear/num-of-doors/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *5
_class+
)'loc:@linear/num-of-doors/weights/part_0
Ķ
"linear/num-of-doors/weights/part_0
VariableV2*
	container *5
_class+
)'loc:@linear/num-of-doors/weights/part_0*
dtype0*
_output_shapes

:*
shape
:*
shared_name 

)linear/num-of-doors/weights/part_0/AssignAssign"linear/num-of-doors/weights/part_04linear/num-of-doors/weights/part_0/Initializer/zeros*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*5
_class+
)'loc:@linear/num-of-doors/weights/part_0
·
'linear/num-of-doors/weights/part_0/readIdentity"linear/num-of-doors/weights/part_0*
T0*
_output_shapes

:*5
_class+
)'loc:@linear/num-of-doors/weights/part_0

;linear/linear/num-of-doors/num-of-doors_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 

:linear/linear/num-of-doors/num-of-doors_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:

5linear/linear/num-of-doors/num-of-doors_weights/SliceSlice(linear/linear/DenseToSparseTensor_2/Cast;linear/linear/num-of-doors/num-of-doors_weights/Slice/begin:linear/linear/num-of-doors/num-of-doors_weights/Slice/size*
T0	*
_output_shapes
:*
Index0

5linear/linear/num-of-doors/num-of-doors_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
č
4linear/linear/num-of-doors/num-of-doors_weights/ProdProd5linear/linear/num-of-doors/num-of-doors_weights/Slice5linear/linear/num-of-doors/num-of-doors_weights/Const*

Tidx0*
T0	*
_output_shapes
: *
	keep_dims( 

>linear/linear/num-of-doors/num-of-doors_weights/Gather/indicesConst*
dtype0*
_output_shapes
: *
value	B :
ł
6linear/linear/num-of-doors/num-of-doors_weights/GatherGather(linear/linear/DenseToSparseTensor_2/Cast>linear/linear/num-of-doors/num-of-doors_weights/Gather/indices*
_output_shapes
: *
validate_indices(*
Tparams0	*
Tindices0
ę
6linear/linear/num-of-doors/num-of-doors_weights/Cast/xPack4linear/linear/num-of-doors/num-of-doors_weights/Prod6linear/linear/num-of-doors/num-of-doors_weights/Gather*
T0	*
_output_shapes
:*
N*

axis 

=linear/linear/num-of-doors/num-of-doors_weights/SparseReshapeSparseReshape)linear/linear/DenseToSparseTensor_2/Where(linear/linear/DenseToSparseTensor_2/Cast6linear/linear/num-of-doors/num-of-doors_weights/Cast/x*-
_output_shapes
:’’’’’’’’’:
£
Flinear/linear/num-of-doors/num-of-doors_weights/SparseReshape/IdentityIdentity!linear/linear/hash_table_Lookup_1*
T0	*#
_output_shapes
:’’’’’’’’’

>linear/linear/num-of-doors/num-of-doors_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 

<linear/linear/num-of-doors/num-of-doors_weights/GreaterEqualGreaterEqualFlinear/linear/num-of-doors/num-of-doors_weights/SparseReshape/Identity>linear/linear/num-of-doors/num-of-doors_weights/GreaterEqual/y*
T0	*#
_output_shapes
:’’’’’’’’’
„
5linear/linear/num-of-doors/num-of-doors_weights/WhereWhere<linear/linear/num-of-doors/num-of-doors_weights/GreaterEqual*'
_output_shapes
:’’’’’’’’’

=linear/linear/num-of-doors/num-of-doors_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
ō
7linear/linear/num-of-doors/num-of-doors_weights/ReshapeReshape5linear/linear/num-of-doors/num-of-doors_weights/Where=linear/linear/num-of-doors/num-of-doors_weights/Reshape/shape*
T0	*#
_output_shapes
:’’’’’’’’’*
Tshape0

8linear/linear/num-of-doors/num-of-doors_weights/Gather_1Gather=linear/linear/num-of-doors/num-of-doors_weights/SparseReshape7linear/linear/num-of-doors/num-of-doors_weights/Reshape*'
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0	*
Tindices0	

8linear/linear/num-of-doors/num-of-doors_weights/Gather_2GatherFlinear/linear/num-of-doors/num-of-doors_weights/SparseReshape/Identity7linear/linear/num-of-doors/num-of-doors_weights/Reshape*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0	*
Tindices0	
Ŗ
8linear/linear/num-of-doors/num-of-doors_weights/IdentityIdentity?linear/linear/num-of-doors/num-of-doors_weights/SparseReshape:1*
T0	*
_output_shapes
:

Ilinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
”
Wlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
£
Ylinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
£
Ylinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
¼
Qlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_sliceStridedSlice8linear/linear/num-of-doors/num-of-doors_weights/IdentityWlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice/stackYlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice/stack_1Ylinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*
_output_shapes
: *

begin_mask *
Index0
Ó
Hlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/CastCastQlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice*

SrcT0	*
_output_shapes
: *

DstT0

Olinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/range/startConst*
dtype0*
_output_shapes
: *
value	B : 

Olinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
ļ
Ilinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/rangeRangeOlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/range/startHlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/CastOlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/range/delta*

Tidx0*#
_output_shapes
:’’’’’’’’’
Ś
Jlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/Cast_1CastIlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/range*

SrcT0*#
_output_shapes
:’’’’’’’’’*

DstT0	
Ŗ
Ylinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        
¬
[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
¬
[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Ń
Slinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1StridedSlice8linear/linear/num-of-doors/num-of-doors_weights/Gather_1Ylinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1/stack[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1/stack_1[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0
Å
Llinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ListDiffListDiffJlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/Cast_1Slinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
out_idx0
£
Ylinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB: 
„
[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
„
[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ä
Slinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2StridedSlice8linear/linear/num-of-doors/num-of-doors_weights/IdentityYlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2/stack[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2/stack_1[linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*
_output_shapes
: *

begin_mask *
Index0

Rlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
¶
Nlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ExpandDims
ExpandDimsSlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/strided_slice_2Rlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ExpandDims/dim*
T0	*
_output_shapes
:*

Tdim0
”
_linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesConst*
dtype0
*
_output_shapes
: *
value	B
 Z
”
_linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseToDense/default_valueConst*
dtype0
*
_output_shapes
: *
value	B
 Z 

Qlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseToDenseSparseToDenseLlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ListDiffNlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ExpandDims_linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseToDense/sparse_values_linear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseToDense/default_value*
T0
*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tindices0	
¢
Qlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
·
Klinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ReshapeReshapeLlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ListDiffQlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/Reshape/shape*
T0	*'
_output_shapes
:’’’’’’’’’*
Tshape0
Ś
Nlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/zeros_like	ZerosLikeKlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/Reshape*
T0	*'
_output_shapes
:’’’’’’’’’

Olinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :

Jlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concatConcatV2Klinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ReshapeNlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/zeros_likeOlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat/axis*

Tidx0*
T0	*'
_output_shapes
:’’’’’’’’’*
N
Õ
Ilinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ShapeShapeLlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ListDiff*
T0	*
out_type0*
_output_shapes
:

Hlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/FillFillIlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/ShapeIlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/Const*
T0	*#
_output_shapes
:’’’’’’’’’

Qlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ų
Llinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_1ConcatV28linear/linear/num-of-doors/num-of-doors_weights/Gather_1Jlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concatQlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_1/axis*

Tidx0*
T0	*'
_output_shapes
:’’’’’’’’’*
N

Qlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ņ
Llinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_2ConcatV28linear/linear/num-of-doors/num-of-doors_weights/Gather_2Hlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/FillQlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_2/axis*

Tidx0*
T0	*#
_output_shapes
:’’’’’’’’’*
N
ł
Qlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseReorderSparseReorderLlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_1Llinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/concat_28linear/linear/num-of-doors/num-of-doors_weights/Identity*
T0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
·
Llinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/IdentityIdentity8linear/linear/num-of-doors/num-of-doors_weights/Identity*
T0	*
_output_shapes
:
¬
[linear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
®
]linear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
®
]linear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ņ
Ulinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_sliceStridedSliceQlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseReorder[linear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice/stack]linear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice/stack_1]linear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
Index0
č
Llinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/CastCastUlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:’’’’’’’’’*

DstT0
ł
Nlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/UniqueUniqueSlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseReorder:1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
out_idx0
ņ
Xlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/embedding_lookupGather'linear/num-of-doors/weights/part_0/readNlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/Unique*'
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*5
_class+
)'loc:@linear/num-of-doors/weights/part_0*
Tindices0	

Glinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparseSparseSegmentSumXlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/embedding_lookupPlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/Unique:1Llinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:’’’’’’’’’

?linear/linear/num-of-doors/num-of-doors_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   

9linear/linear/num-of-doors/num-of-doors_weights/Reshape_1ReshapeQlinear/linear/num-of-doors/num-of-doors_weights/SparseFillEmptyRows/SparseToDense?linear/linear/num-of-doors/num-of-doors_weights/Reshape_1/shape*
T0
*'
_output_shapes
:’’’’’’’’’*
Tshape0
¼
5linear/linear/num-of-doors/num-of-doors_weights/ShapeShapeGlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:

Clinear/linear/num-of-doors/num-of-doors_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

Elinear/linear/num-of-doors/num-of-doors_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Elinear/linear/num-of-doors/num-of-doors_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
é
=linear/linear/num-of-doors/num-of-doors_weights/strided_sliceStridedSlice5linear/linear/num-of-doors/num-of-doors_weights/ShapeClinear/linear/num-of-doors/num-of-doors_weights/strided_slice/stackElinear/linear/num-of-doors/num-of-doors_weights/strided_slice/stack_1Elinear/linear/num-of-doors/num-of-doors_weights/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0*
_output_shapes
: *

begin_mask *
Index0
y
7linear/linear/num-of-doors/num-of-doors_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
ļ
5linear/linear/num-of-doors/num-of-doors_weights/stackPack7linear/linear/num-of-doors/num-of-doors_weights/stack/0=linear/linear/num-of-doors/num-of-doors_weights/strided_slice*
T0*
_output_shapes
:*
N*

axis 
ū
4linear/linear/num-of-doors/num-of-doors_weights/TileTile9linear/linear/num-of-doors/num-of-doors_weights/Reshape_15linear/linear/num-of-doors/num-of-doors_weights/stack*
T0
*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*

Tmultiples0
Ā
:linear/linear/num-of-doors/num-of-doors_weights/zeros_like	ZerosLikeGlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’
¦
/linear/linear/num-of-doors/num-of-doors_weightsSelect4linear/linear/num-of-doors/num-of-doors_weights/Tile:linear/linear/num-of-doors/num-of-doors_weights/zeros_likeGlinear/linear/num-of-doors/num-of-doors_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’

6linear/linear/num-of-doors/num-of-doors_weights/Cast_1Cast(linear/linear/DenseToSparseTensor_2/Cast*

SrcT0	*
_output_shapes
:*

DstT0

=linear/linear/num-of-doors/num-of-doors_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 

<linear/linear/num-of-doors/num-of-doors_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
§
7linear/linear/num-of-doors/num-of-doors_weights/Slice_1Slice6linear/linear/num-of-doors/num-of-doors_weights/Cast_1=linear/linear/num-of-doors/num-of-doors_weights/Slice_1/begin<linear/linear/num-of-doors/num-of-doors_weights/Slice_1/size*
T0*
_output_shapes
:*
Index0
¦
7linear/linear/num-of-doors/num-of-doors_weights/Shape_1Shape/linear/linear/num-of-doors/num-of-doors_weights*
T0*
out_type0*
_output_shapes
:

=linear/linear/num-of-doors/num-of-doors_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:

<linear/linear/num-of-doors/num-of-doors_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Ø
7linear/linear/num-of-doors/num-of-doors_weights/Slice_2Slice7linear/linear/num-of-doors/num-of-doors_weights/Shape_1=linear/linear/num-of-doors/num-of-doors_weights/Slice_2/begin<linear/linear/num-of-doors/num-of-doors_weights/Slice_2/size*
T0*
_output_shapes
:*
Index0
}
;linear/linear/num-of-doors/num-of-doors_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
«
6linear/linear/num-of-doors/num-of-doors_weights/concatConcatV27linear/linear/num-of-doors/num-of-doors_weights/Slice_17linear/linear/num-of-doors/num-of-doors_weights/Slice_2;linear/linear/num-of-doors/num-of-doors_weights/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N
ķ
9linear/linear/num-of-doors/num-of-doors_weights/Reshape_2Reshape/linear/linear/num-of-doors/num-of-doors_weights6linear/linear/num-of-doors/num-of-doors_weights/concat*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0
n
linear/linear/Reshape_6/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
¼
linear/linear/Reshape_6Reshape9linear/linear/num-of-doors/num-of-doors_weights/Reshape_2linear/linear/Reshape_6/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0

linear/linear/AddNAddNlinear/linear/Reshapelinear/linear/Reshape_1linear/linear/Reshape_2linear/linear/Reshape_3linear/linear/Reshape_4linear/linear/Reshape_5linear/linear/Reshape_6*
T0*'
_output_shapes
:’’’’’’’’’*
N
¦
+linear/bias_weight/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *,
_class"
 loc:@linear/bias_weight/part_0
³
linear/bias_weight/part_0
VariableV2*
	container *,
_class"
 loc:@linear/bias_weight/part_0*
dtype0*
_output_shapes
:*
shape:*
shared_name 
ī
 linear/bias_weight/part_0/AssignAssignlinear/bias_weight/part_0+linear/bias_weight/part_0/Initializer/zeros*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@linear/bias_weight/part_0

linear/bias_weight/part_0/readIdentitylinear/bias_weight/part_0*
T0*
_output_shapes
:*,
_class"
 loc:@linear/bias_weight/part_0
c
linear/bias_weightIdentitylinear/bias_weight/part_0/read*
T0*
_output_shapes
:

linear/linear/BiasAddBiasAddlinear/linear/AddNlinear/bias_weight*
T0*'
_output_shapes
:’’’’’’’’’*
data_formatNHWC

)linear/regression_head/predictions/scoresSqueezelinear/linear/BiasAdd*
T0*#
_output_shapes
:’’’’’’’’’*
squeeze_dims


+linear/regression_head/predictions/IdentityIdentity)linear/regression_head/predictions/scores*
T0*#
_output_shapes
:’’’’’’’’’

7linear/regression_head/mean_squared_loss/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
Ņ
3linear/regression_head/mean_squared_loss/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:87linear/regression_head/mean_squared_loss/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0
±
,linear/regression_head/mean_squared_loss/subSublinear/linear/BiasAdd3linear/regression_head/mean_squared_loss/ExpandDims*
T0*'
_output_shapes
:’’’’’’’’’

(linear/regression_head/mean_squared_lossSquare,linear/regression_head/mean_squared_loss/sub*
T0*'
_output_shapes
:’’’’’’’’’

3linear/regression_head/mean_squared_loss/loss/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Ņ
-linear/regression_head/mean_squared_loss/lossMean(linear/regression_head/mean_squared_loss3linear/regression_head/mean_squared_loss/loss/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
n
)linear/regression_head/ScalarSummary/tagsConst*
dtype0*
_output_shapes
: *
valueB
 Bloss
°
$linear/regression_head/ScalarSummaryScalarSummary)linear/regression_head/ScalarSummary/tags-linear/regression_head/mean_squared_loss/loss*
T0*
_output_shapes
: 
n
)linear/regression_head/metrics/mean/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    

)linear/regression_head/metrics/mean/total
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 

0linear/regression_head/metrics/mean/total/AssignAssign)linear/regression_head/metrics/mean/total)linear/regression_head/metrics/mean/zeros*
T0*
_output_shapes
: *
validate_shape(*
use_locking(*<
_class2
0.loc:@linear/regression_head/metrics/mean/total
Ä
.linear/regression_head/metrics/mean/total/readIdentity)linear/regression_head/metrics/mean/total*
T0*
_output_shapes
: *<
_class2
0.loc:@linear/regression_head/metrics/mean/total
p
+linear/regression_head/metrics/mean/zeros_1Const*
dtype0*
_output_shapes
: *
valueB
 *    

)linear/regression_head/metrics/mean/count
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 

0linear/regression_head/metrics/mean/count/AssignAssign)linear/regression_head/metrics/mean/count+linear/regression_head/metrics/mean/zeros_1*
T0*
_output_shapes
: *
validate_shape(*
use_locking(*<
_class2
0.loc:@linear/regression_head/metrics/mean/count
Ä
.linear/regression_head/metrics/mean/count/readIdentity)linear/regression_head/metrics/mean/count*
T0*
_output_shapes
: *<
_class2
0.loc:@linear/regression_head/metrics/mean/count
j
(linear/regression_head/metrics/mean/SizeConst*
dtype0*
_output_shapes
: *
value	B :

-linear/regression_head/metrics/mean/ToFloat_1Cast(linear/regression_head/metrics/mean/Size*

SrcT0*
_output_shapes
: *

DstT0
l
)linear/regression_head/metrics/mean/ConstConst*
dtype0*
_output_shapes
: *
valueB 
Ę
'linear/regression_head/metrics/mean/SumSum-linear/regression_head/mean_squared_loss/loss)linear/regression_head/metrics/mean/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 

-linear/regression_head/metrics/mean/AssignAdd	AssignAdd)linear/regression_head/metrics/mean/total'linear/regression_head/metrics/mean/Sum*
T0*
_output_shapes
: *
use_locking( *<
_class2
0.loc:@linear/regression_head/metrics/mean/total
ø
/linear/regression_head/metrics/mean/AssignAdd_1	AssignAdd)linear/regression_head/metrics/mean/count-linear/regression_head/metrics/mean/ToFloat_1.^linear/regression_head/mean_squared_loss/loss*
T0*
_output_shapes
: *
use_locking( *<
_class2
0.loc:@linear/regression_head/metrics/mean/count
r
-linear/regression_head/metrics/mean/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
¶
+linear/regression_head/metrics/mean/GreaterGreater.linear/regression_head/metrics/mean/count/read-linear/regression_head/metrics/mean/Greater/y*
T0*
_output_shapes
: 
·
+linear/regression_head/metrics/mean/truedivRealDiv.linear/regression_head/metrics/mean/total/read.linear/regression_head/metrics/mean/count/read*
T0*
_output_shapes
: 
p
+linear/regression_head/metrics/mean/value/eConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ū
)linear/regression_head/metrics/mean/valueSelect+linear/regression_head/metrics/mean/Greater+linear/regression_head/metrics/mean/truediv+linear/regression_head/metrics/mean/value/e*
T0*
_output_shapes
: 
t
/linear/regression_head/metrics/mean/Greater_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
»
-linear/regression_head/metrics/mean/Greater_1Greater/linear/regression_head/metrics/mean/AssignAdd_1/linear/regression_head/metrics/mean/Greater_1/y*
T0*
_output_shapes
: 
¹
-linear/regression_head/metrics/mean/truediv_1RealDiv-linear/regression_head/metrics/mean/AssignAdd/linear/regression_head/metrics/mean/AssignAdd_1*
T0*
_output_shapes
: 
t
/linear/regression_head/metrics/mean/update_op/eConst*
dtype0*
_output_shapes
: *
valueB
 *    
ē
-linear/regression_head/metrics/mean/update_opSelect-linear/regression_head/metrics/mean/Greater_1-linear/regression_head/metrics/mean/truediv_1/linear/regression_head/metrics/mean/update_op/e*
T0*
_output_shapes
: 
B

group_depsNoOp.^linear/regression_head/metrics/mean/update_op
{
eval_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
loc:@eval_step

	eval_step
VariableV2*
	container *
_class
loc:@eval_step*
dtype0	*
_output_shapes
: *
shape: *
shared_name 
Ŗ
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
T0	*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@eval_step
d
eval_step/readIdentity	eval_step*
T0	*
_output_shapes
: *
_class
loc:@eval_step
Q
AssignAdd/valueConst*
dtype0	*
_output_shapes
: *
value	B	 R

	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
T0	*
_output_shapes
: *
use_locking( *
_class
loc:@eval_step
Ū
initNoOp^global_step/Assign#^linear/height/weight/part_0/Assign'^linear/horsepower/weight/part_0/Assign#^linear/length/weight/part_0/Assign"^linear/width/weight/part_0/Assign"^linear/make/weights/part_0/Assign.^linear/num-of-cylinders/weights/part_0/Assign*^linear/num-of-doors/weights/part_0/Assign!^linear/bias_weight/part_0/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1

4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
Į
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedlinear/height/weight/part_0*
dtype0*
_output_shapes
: *.
_class$
" loc:@linear/height/weight/part_0
É
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedlinear/horsepower/weight/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@linear/horsepower/weight/part_0
Į
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedlinear/length/weight/part_0*
dtype0*
_output_shapes
: *.
_class$
" loc:@linear/length/weight/part_0
æ
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedlinear/width/weight/part_0*
dtype0*
_output_shapes
: *-
_class#
!loc:@linear/width/weight/part_0
æ
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedlinear/make/weights/part_0*
dtype0*
_output_shapes
: *-
_class#
!loc:@linear/make/weights/part_0
×
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitialized&linear/num-of-cylinders/weights/part_0*
dtype0*
_output_shapes
: *9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0
Ļ
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitialized"linear/num-of-doors/weights/part_0*
dtype0*
_output_shapes
: *5
_class+
)'loc:@linear/num-of-doors/weights/part_0
½
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedlinear/bias_weight/part_0*
dtype0*
_output_shapes
: *,
_class"
 loc:@linear/bias_weight/part_0
Ż
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitialized)linear/regression_head/metrics/mean/total*
dtype0*
_output_shapes
: *<
_class2
0.loc:@linear/regression_head/metrics/mean/total
Ž
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitialized)linear/regression_head/metrics/mean/count*
dtype0*
_output_shapes
: *<
_class2
0.loc:@linear/regression_head/metrics/mean/count

7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitialized	eval_step*
dtype0	*
_output_shapes
: *
_class
loc:@eval_step

$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_11*
T0
*
_output_shapes
:*
N*

axis 
y
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack*
_output_shapes
:
Ö
$report_uninitialized_variables/ConstConst*
dtype0*
_output_shapes
:*ż
valueóBšBglobal_stepBlinear/height/weight/part_0Blinear/horsepower/weight/part_0Blinear/length/weight/part_0Blinear/width/weight/part_0Blinear/make/weights/part_0B&linear/num-of-cylinders/weights/part_0B"linear/num-of-doors/weights/part_0Blinear/bias_weight/part_0B)linear/regression_head/metrics/mean/totalB)linear/regression_head/metrics/mean/countB	eval_step
{
1report_uninitialized_variables/boolean_mask/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

?report_uninitialized_variables/boolean_mask/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ł
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
:*

begin_mask*
Index0

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
õ
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
}
3report_uninitialized_variables/boolean_mask/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
į
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
: *

begin_mask *
Index0
Æ
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod*
T0*
_output_shapes
:*
N*

axis 
y
7report_uninitialized_variables/boolean_mask/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
«
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N
Ė
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat*
T0*
_output_shapes
:*
Tshape0

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Ū
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape*
T0
*
_output_shapes
:*
Tshape0

1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1*'
_output_shapes
:’’’’’’’’’
¶
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where*
T0	*#
_output_shapes
:’’’’’’’’’*
squeeze_dims


2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*
Tindices0	
g
$report_uninitialized_resources/ConstConst*
dtype0*
_output_shapes
: *
valueB 
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
¼
concatConcatV22report_uninitialized_variables/boolean_mask/Gather$report_uninitialized_resources/Constconcat/axis*

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’*
N
”
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
Ć
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedlinear/height/weight/part_0*
dtype0*
_output_shapes
: *.
_class$
" loc:@linear/height/weight/part_0
Ė
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedlinear/horsepower/weight/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@linear/horsepower/weight/part_0
Ć
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedlinear/length/weight/part_0*
dtype0*
_output_shapes
: *.
_class$
" loc:@linear/length/weight/part_0
Į
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedlinear/width/weight/part_0*
dtype0*
_output_shapes
: *-
_class#
!loc:@linear/width/weight/part_0
Į
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedlinear/make/weights/part_0*
dtype0*
_output_shapes
: *-
_class#
!loc:@linear/make/weights/part_0
Ł
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitialized&linear/num-of-cylinders/weights/part_0*
dtype0*
_output_shapes
: *9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0
Ń
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitialized"linear/num-of-doors/weights/part_0*
dtype0*
_output_shapes
: *5
_class+
)'loc:@linear/num-of-doors/weights/part_0
æ
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedlinear/bias_weight/part_0*
dtype0*
_output_shapes
: *,
_class"
 loc:@linear/bias_weight/part_0
š
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_8*
T0
*
_output_shapes
:	*
N	*

axis 
}
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack*
_output_shapes
:	
÷
&report_uninitialized_variables_1/ConstConst*
dtype0*
_output_shapes
:	*
valueB	Bglobal_stepBlinear/height/weight/part_0Blinear/horsepower/weight/part_0Blinear/length/weight/part_0Blinear/width/weight/part_0Blinear/make/weights/part_0B&linear/num-of-cylinders/weights/part_0B"linear/num-of-doors/weights/part_0Blinear/bias_weight/part_0
}
3report_uninitialized_variables_1/boolean_mask/ShapeConst*
dtype0*
_output_shapes
:*
valueB:	

Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ć
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
:*

begin_mask*
Index0

Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
ū
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 

5report_uninitialized_variables_1/boolean_mask/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:	

Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ė
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
: *

begin_mask *
Index0
³
=report_uninitialized_variables_1/boolean_mask/concat/values_0Pack2report_uninitialized_variables_1/boolean_mask/Prod*
T0*
_output_shapes
:*
N*

axis 
{
9report_uninitialized_variables_1/boolean_mask/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
³
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/concat/values_0=report_uninitialized_variables_1/boolean_mask/strided_slice_19report_uninitialized_variables_1/boolean_mask/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N
Ń
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat*
T0*
_output_shapes
:	*
Tshape0

=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
į
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape*
T0
*
_output_shapes
:	*
Tshape0

3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1*'
_output_shapes
:’’’’’’’’’
ŗ
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where*
T0	*#
_output_shapes
:’’’’’’’’’*
squeeze_dims


4report_uninitialized_variables_1/boolean_mask/GatherGather5report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze*#
_output_shapes
:’’’’’’’’’*
validate_indices(*
Tparams0*
Tindices0	

init_2NoOp1^linear/regression_head/metrics/mean/total/Assign1^linear/regression_head/metrics/mean/count/Assign^eval_step/Assign
u
init_all_tablesNoOp-^linear/linear/lookup_1/hash_table/table_init-^linear/linear/lookup_2/hash_table/table_init
/
group_deps_2NoOp^init_2^init_all_tables
³
Merge/MergeSummaryMergeSummaryHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full$linear/regression_head/ScalarSummary*
_output_shapes
: *
N
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_9a56e091c8224634b6abb77630f42bc0/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
\
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
±
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:	*ä
valueŚB×	Bglobal_stepBlinear/bias_weightBlinear/height/weightBlinear/horsepower/weightBlinear/length/weightBlinear/make/weightsBlinear/num-of-cylinders/weightsBlinear/num-of-doors/weightsBlinear/width/weight
É
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:	*y
valuepBn	B B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B50 1 0,50:0,1B7 1 0,7:0,1B2 1 0,2:0,1B1 1 0,1:0,1
«
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_steplinear/bias_weight/part_0/read linear/height/weight/part_0/read$linear/horsepower/weight/part_0/read linear/length/weight/part_0/readlinear/make/weights/part_0/read+linear/num-of-cylinders/weights/part_0/read'linear/num-of-doors/weights/part_0/readlinear/width/weight/part_0/read*
dtypes
2		

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*
_output_shapes
:*
N*

axis 
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBglobal_step
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2	

save/AssignAssignglobal_stepsave/RestoreV2*
T0	*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@global_step
x
save/RestoreV2_1/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBlinear/bias_weight
o
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB1 0,1

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
Ą
save/Assign_1Assignlinear/bias_weight/part_0save/RestoreV2_1*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*,
_class"
 loc:@linear/bias_weight/part_0
z
save/RestoreV2_2/tensor_namesConst*
dtype0*
_output_shapes
:*)
value BBlinear/height/weight
u
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
Č
save/Assign_2Assignlinear/height/weight/part_0save/RestoreV2_2*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*.
_class$
" loc:@linear/height/weight/part_0
~
save/RestoreV2_3/tensor_namesConst*
dtype0*
_output_shapes
:*-
value$B"Blinear/horsepower/weight
u
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
Š
save/Assign_3Assignlinear/horsepower/weight/part_0save/RestoreV2_3*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*2
_class(
&$loc:@linear/horsepower/weight/part_0
z
save/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:*)
value BBlinear/length/weight
u
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
Č
save/Assign_4Assignlinear/length/weight/part_0save/RestoreV2_4*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*.
_class$
" loc:@linear/length/weight/part_0
y
save/RestoreV2_5/tensor_namesConst*
dtype0*
_output_shapes
:*(
valueBBlinear/make/weights
w
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*"
valueBB50 1 0,50:0,1

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
Ę
save/Assign_5Assignlinear/make/weights/part_0save/RestoreV2_5*
T0*
_output_shapes

:2*
validate_shape(*
use_locking(*-
_class#
!loc:@linear/make/weights/part_0

save/RestoreV2_6/tensor_namesConst*
dtype0*
_output_shapes
:*4
value+B)Blinear/num-of-cylinders/weights
u
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB7 1 0,7:0,1

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
Ž
save/Assign_6Assign&linear/num-of-cylinders/weights/part_0save/RestoreV2_6*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*9
_class/
-+loc:@linear/num-of-cylinders/weights/part_0

save/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*0
value'B%Blinear/num-of-doors/weights
u
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB2 1 0,2:0,1

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
Ö
save/Assign_7Assign"linear/num-of-doors/weights/part_0save/RestoreV2_7*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*5
_class+
)'loc:@linear/num-of-doors/weights/part_0
y
save/RestoreV2_8/tensor_namesConst*
dtype0*
_output_shapes
:*(
valueBBlinear/width/weight
u
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
Ę
save/Assign_8Assignlinear/width/weight/part_0save/RestoreV2_8*
T0*
_output_shapes

:*
validate_shape(*
use_locking(*-
_class#
!loc:@linear/width/weight/part_0
Ø
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard""!
local_init_op

group_deps_2"|
local_variablesi
g
+linear/regression_head/metrics/mean/total:0
+linear/regression_head/metrics/mean/count:0
eval_step:0"
queue_runners

enqueue_input/fifo_queue$enqueue_input/fifo_queue_EnqueueManyenqueue_input/fifo_queue_Close" enqueue_input/fifo_queue_Close_1*"U
ready_for_local_init_op:
8
6report_uninitialized_variables_1/boolean_mask/Gather:0" 
global_step

global_step:0"Š	
trainable_variablesø	µ	

linear/height/weight/part_0:0"linear/height/weight/part_0/Assign"linear/height/weight/part_0/read:0""
linear/height/weight  "

!linear/horsepower/weight/part_0:0&linear/horsepower/weight/part_0/Assign&linear/horsepower/weight/part_0/read:0"&
linear/horsepower/weight  "

linear/length/weight/part_0:0"linear/length/weight/part_0/Assign"linear/length/weight/part_0/read:0""
linear/length/weight  "

linear/width/weight/part_0:0!linear/width/weight/part_0/Assign!linear/width/weight/part_0/read:0"!
linear/width/weight  "

linear/make/weights/part_0:0!linear/make/weights/part_0/Assign!linear/make/weights/part_0/read:0"!
linear/make/weights2  "2
·
(linear/num-of-cylinders/weights/part_0:0-linear/num-of-cylinders/weights/part_0/Assign-linear/num-of-cylinders/weights/part_0/read:0"-
linear/num-of-cylinders/weights  "
§
$linear/num-of-doors/weights/part_0:0)linear/num-of-doors/weights/part_0/Assign)linear/num-of-doors/weights/part_0/read:0")
linear/num-of-doors/weights  "

linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight ""J
savers@>
<
save/Const:0save/Identity:0save/restore_all (5 @F8"&

summary_op

Merge/MergeSummary:0"s
table_initializer^
\
,linear/linear/lookup_1/hash_table/table_init
,linear/linear/lookup_2/hash_table/table_init"
linear

linear/height/weight/part_0:0
!linear/horsepower/weight/part_0:0
linear/length/weight/part_0:0
linear/width/weight/part_0:0
linear/make/weights/part_0:0
(linear/num-of-cylinders/weights/part_0:0
$linear/num-of-doors/weights/part_0:0
linear/bias_weight/part_0:0"”
model_variables

linear/height/weight/part_0:0
!linear/horsepower/weight/part_0:0
linear/length/weight/part_0:0
linear/width/weight/part_0:0
linear/make/weights/part_0:0
(linear/num-of-cylinders/weights/part_0:0
$linear/num-of-doors/weights/part_0:0
linear/bias_weight/part_0:0"
ready_op


concat:0"’	
	variablesń	ī	
7
global_step:0global_step/Assignglobal_step/read:0

linear/height/weight/part_0:0"linear/height/weight/part_0/Assign"linear/height/weight/part_0/read:0""
linear/height/weight  "

!linear/horsepower/weight/part_0:0&linear/horsepower/weight/part_0/Assign&linear/horsepower/weight/part_0/read:0"&
linear/horsepower/weight  "

linear/length/weight/part_0:0"linear/length/weight/part_0/Assign"linear/length/weight/part_0/read:0""
linear/length/weight  "

linear/width/weight/part_0:0!linear/width/weight/part_0/Assign!linear/width/weight/part_0/read:0"!
linear/width/weight  "

linear/make/weights/part_0:0!linear/make/weights/part_0/Assign!linear/make/weights/part_0/read:0"!
linear/make/weights2  "2
·
(linear/num-of-cylinders/weights/part_0:0-linear/num-of-cylinders/weights/part_0/Assign-linear/num-of-cylinders/weights/part_0/read:0"-
linear/num-of-cylinders/weights  "
§
$linear/num-of-doors/weights/part_0:0)linear/num-of-doors/weights/part_0/Assign)linear/num-of-doors/weights/part_0/read:0")
linear/num-of-doors/weights  "

linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight ""
	summariesv
t
Jenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full:0
&linear/regression_head/ScalarSummary:0"
	eval_step

eval_step:0"
init_op

group_deps_1_       	źHŃ¤PÖAN*

loss4¼AM5ż