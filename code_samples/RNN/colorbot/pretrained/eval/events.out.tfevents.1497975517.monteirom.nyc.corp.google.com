       гK"	  @╖RR╓Abrain.Event:2c*Aд;Д     2╙Ь	МVF╖RR╓A"оИ

global_step/Initializer/zerosConst*
_output_shapes
: *
dtype0	*
_class
loc:@global_step*
value	B	 R 
П
global_step
VariableV2*
shared_name *
shape: *
_output_shapes
: *
_class
loc:@global_step*
dtype0	*
	container 
▓
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
_output_shapes
: *
T0	
є
"enqueue_input/random_shuffle_queueRandomShuffleQueueV2*
shapes
: : : : : : *
capacityА*
min_after_dequeueА*

seed *
	container *
seed2 *
shared_name *
_output_shapes
: *
component_types

2				
^
enqueue_input/PlaceholderPlaceholder*
_output_shapes
:*
dtype0	*
shape:
`
enqueue_input/Placeholder_1Placeholder*
_output_shapes
:*
dtype0*
shape:
`
enqueue_input/Placeholder_2Placeholder*
shape:*
dtype0	*
_output_shapes
:
`
enqueue_input/Placeholder_3Placeholder*
dtype0	*
shape:*
_output_shapes
:
`
enqueue_input/Placeholder_4Placeholder*
dtype0	*
shape:*
_output_shapes
:
`
enqueue_input/Placeholder_5Placeholder*
shape:*
dtype0*
_output_shapes
:
╩
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2enqueue_input/Placeholder_3enqueue_input/Placeholder_4enqueue_input/Placeholder_5*

timeout_ms         *
Tcomponents

2				
`
enqueue_input/Placeholder_6Placeholder*
_output_shapes
:*
shape:*
dtype0	
`
enqueue_input/Placeholder_7Placeholder*
_output_shapes
:*
shape:*
dtype0
`
enqueue_input/Placeholder_8Placeholder*
shape:*
dtype0	*
_output_shapes
:
`
enqueue_input/Placeholder_9Placeholder*
shape:*
dtype0	*
_output_shapes
:
a
enqueue_input/Placeholder_10Placeholder*
shape:*
dtype0	*
_output_shapes
:
a
enqueue_input/Placeholder_11Placeholder*
_output_shapes
:*
dtype0*
shape:
╨
0enqueue_input/random_shuffle_queue_EnqueueMany_1QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_6enqueue_input/Placeholder_7enqueue_input/Placeholder_8enqueue_input/Placeholder_9enqueue_input/Placeholder_10enqueue_input/Placeholder_11*

timeout_ms         *
Tcomponents

2				
a
enqueue_input/Placeholder_12Placeholder*
_output_shapes
:*
shape:*
dtype0	
a
enqueue_input/Placeholder_13Placeholder*
shape:*
dtype0*
_output_shapes
:
a
enqueue_input/Placeholder_14Placeholder*
_output_shapes
:*
shape:*
dtype0	
a
enqueue_input/Placeholder_15Placeholder*
shape:*
dtype0	*
_output_shapes
:
a
enqueue_input/Placeholder_16Placeholder*
dtype0	*
shape:*
_output_shapes
:
a
enqueue_input/Placeholder_17Placeholder*
_output_shapes
:*
dtype0*
shape:
╘
0enqueue_input/random_shuffle_queue_EnqueueMany_2QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_12enqueue_input/Placeholder_13enqueue_input/Placeholder_14enqueue_input/Placeholder_15enqueue_input/Placeholder_16enqueue_input/Placeholder_17*

timeout_ms         *
Tcomponents

2				
a
enqueue_input/Placeholder_18Placeholder*
_output_shapes
:*
dtype0	*
shape:
a
enqueue_input/Placeholder_19Placeholder*
_output_shapes
:*
dtype0*
shape:
a
enqueue_input/Placeholder_20Placeholder*
shape:*
dtype0	*
_output_shapes
:
a
enqueue_input/Placeholder_21Placeholder*
shape:*
dtype0	*
_output_shapes
:
a
enqueue_input/Placeholder_22Placeholder*
_output_shapes
:*
shape:*
dtype0	
a
enqueue_input/Placeholder_23Placeholder*
dtype0*
shape:*
_output_shapes
:
╘
0enqueue_input/random_shuffle_queue_EnqueueMany_3QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_18enqueue_input/Placeholder_19enqueue_input/Placeholder_20enqueue_input/Placeholder_21enqueue_input/Placeholder_22enqueue_input/Placeholder_23*

timeout_ms         *
Tcomponents

2				
{
(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue*
cancel_pending_enqueues( 
}
*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue*
cancel_pending_enqueues(
r
'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue*
_output_shapes
: 
V
enqueue_input/sub/yConst*
value
B :А*
dtype0*
_output_shapes
: 
w
enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y*
T0*
_output_shapes
: 
Y
enqueue_input/Maximum/xConst*
value	B : *
_output_shapes
: *
dtype0
m
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub*
_output_shapes
: *
T0
a
enqueue_input/CastCastenqueue_input/Maximum*
_output_shapes
: *

DstT0*

SrcT0
X
enqueue_input/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *лкк:
b
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y*
T0*
_output_shapes
: 
ь
Xenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_256_of_768_full/tagsConst*
dtype0*
_output_shapes
: *d
value[BY BSenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_256_of_768_full
Є
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_256_of_768_fullScalarSummaryXenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_256_of_768_full/tagsenqueue_input/mul*
_output_shapes
: *
T0
d
"random_shuffle_queue_DequeueUpTo/nConst*
_output_shapes
: *
dtype0*
value	B :@
и
 random_shuffle_queue_DequeueUpToQueueDequeueUpToV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueUpTo/n*n
_output_shapes\
Z:         :         :         :         :         :         *
component_types

2				*

timeout_ms         
F
ConstConst*
valueB B *
dtype0*
_output_shapes
: 
Г
StringSplitStringSplit"random_shuffle_queue_DequeueUpTo:1Const*<
_output_shapes*
(:         :         :
╙
mappingConst*
dtype0*
_output_shapes	
:А*Ц
valueМBЙАB BBBBBBBBB	B
BBBBBBBBBBBBBBBBBBBBBB B!B"B#B$B%B&B'B(B)B*B+B,B-B.B/B0B1B2B3B4B5B6B7B8B9B:B;B<B=B>B?B@BABBBCBDBEBFBGBHBIBJBKBLBMBNBOBPBQBRBSBTBUBVBWBXBYBZB[B\B]B^B_B`BaBbBcBdBeBfBgBhBiBjBkBlBmBnBoBpBqBrBsBtBuBvBwBxByBzB{B|B}B~BB┬АB┬БB┬ВB┬ГB┬ДB┬ЕB┬ЖB┬ЗB┬ИB┬ЙB┬КB┬ЛB┬МB┬НB┬ОB┬ПB┬РB┬СB┬ТB┬УB┬ФB┬ХB┬ЦB┬ЧB┬ШB┬ЩB┬ЪB┬ЫB┬ЬB┬ЭB┬ЮB┬ЯB┬аB┬бB┬вB┬гB┬дB┬еB┬жB┬зB┬иB┬йB┬кB┬лB┬мB┬нB┬оB┬пB┬░B┬▒B┬▓B┬│B┬┤B┬╡B┬╢B┬╖B┬╕B┬╣B┬║B┬╗B┬╝B┬╜B┬╛B┬┐B├АB├БB├ВB├ГB├ДB├ЕB├ЖB├ЗB├ИB├ЙB├КB├ЛB├МB├НB├ОB├ПB├РB├СB├ТB├УB├ФB├ХB├ЦB├ЧB├ШB├ЩB├ЪB├ЫB├ЬB├ЭB├ЮB├ЯB├аB├бB├вB├гB├дB├еB├жB├зB├иB├йB├кB├лB├мB├нB├оB├пB├░B├▒B├▓B├│B├┤B├╡B├╢B├╖B├╕B├╣B├║B├╗B├╝B├╜B├╛B├┐
W
string_to_index/SizeConst*
dtype0*
_output_shapes
: *
value
B :А
]
string_to_index/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
]
string_to_index/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Ч
string_to_index/rangeRangestring_to_index/range/startstring_to_index/Sizestring_to_index/range/delta*

Tidx0*
_output_shapes	
:А
k
string_to_index/ToInt64Caststring_to_index/range*

SrcT0*
_output_shapes	
:А*

DstT0	
и
string_to_index/hash_table	HashTable*
shared_name *
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
:
k
 string_to_index/hash_table/ConstConst*
valueB	 R
         *
_output_shapes
: *
dtype0	
╜
%string_to_index/hash_table/table_initInitializeTablestring_to_index/hash_tablemappingstring_to_index/ToInt64*-
_class#
!loc:@string_to_index/hash_table*

Tkey0*

Tval0	
▄
hash_table_LookupLookupTableFindstring_to_index/hash_tableStringSplit:1 string_to_index/hash_table/Const*

Tout0	*-
_class#
!loc:@string_to_index/hash_table*#
_output_shapes
:         *	
Tin0
└
stackPack"random_shuffle_queue_DequeueUpTo:2"random_shuffle_queue_DequeueUpTo:3"random_shuffle_queue_DequeueUpTo:4*'
_output_shapes
:         *
N*

axis*
T0	
W
ToFloatCaststack*

SrcT0	*'
_output_shapes
:         *

DstT0
N
	truediv/yConst*
valueB
 *  C*
dtype0*
_output_shapes
: 
X
truedivRealDivToFloat	truediv/y*'
_output_shapes
:         *
T0
U
shuffle_batch/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z
┼
'shuffle_batch/AddManySparseToTensorsMapAddManySparseToTensorsMapStringSplithash_table_LookupStringSplit:2*#
_output_shapes
:         *
	container *
T0	*
shared_name 
o
shuffle_batch/ExpandDims/dimConst*
valueB:
         *
_output_shapes
:*
dtype0
л
shuffle_batch/ExpandDims
ExpandDims'shuffle_batch/AddManySparseToTensorsMapshuffle_batch/ExpandDims/dim*

Tdim0*'
_output_shapes
:         *
T0	
ё
"shuffle_batch/random_shuffle_queueRandomShuffleQueueV2*
shapes
::: *
shared_name *
min_after_dequeued*
capacityш*
_output_shapes
: *
component_types
2	*

seed *
seed2 *
	container 
т
.shuffle_batch/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"shuffle_batch/random_shuffle_queueshuffle_batch/ExpandDimstruediv"random_shuffle_queue_DequeueUpTo:5*

timeout_ms         *
Tcomponents
2	
{
(shuffle_batch/random_shuffle_queue_CloseQueueCloseV2"shuffle_batch/random_shuffle_queue*
cancel_pending_enqueues( 
}
*shuffle_batch/random_shuffle_queue_Close_1QueueCloseV2"shuffle_batch/random_shuffle_queue*
cancel_pending_enqueues(
r
'shuffle_batch/random_shuffle_queue_SizeQueueSizeV2"shuffle_batch/random_shuffle_queue*
_output_shapes
: 
U
shuffle_batch/sub/yConst*
value	B :d*
dtype0*
_output_shapes
: 
w
shuffle_batch/subSub'shuffle_batch/random_shuffle_queue_Sizeshuffle_batch/sub/y*
_output_shapes
: *
T0
Y
shuffle_batch/Maximum/xConst*
value	B : *
_output_shapes
: *
dtype0
m
shuffle_batch/MaximumMaximumshuffle_batch/Maximum/xshuffle_batch/sub*
_output_shapes
: *
T0
a
shuffle_batch/CastCastshuffle_batch/Maximum*

SrcT0*
_output_shapes
: *

DstT0
X
shuffle_batch/mul/yConst*
valueB
 *┤вС:*
_output_shapes
: *
dtype0
b
shuffle_batch/mulMulshuffle_batch/Castshuffle_batch/mul/y*
_output_shapes
: *
T0
Ь
0shuffle_batch/fraction_over_100_of_900_full/tagsConst*
dtype0*
_output_shapes
: *<
value3B1 B+shuffle_batch/fraction_over_100_of_900_full
в
+shuffle_batch/fraction_over_100_of_900_fullScalarSummary0shuffle_batch/fraction_over_100_of_900_full/tagsshuffle_batch/mul*
T0*
_output_shapes
: 
Q
shuffle_batch/nConst*
_output_shapes
: *
dtype0*
value	B :@
┌
shuffle_batchQueueDequeueUpToV2"shuffle_batch/random_shuffle_queueshuffle_batch/n*I
_output_shapes7
5:         :         :         *
component_types
2	*

timeout_ms         
t
shuffle_batch/SqueezeSqueezeshuffle_batch*
squeeze_dims
*
T0	*#
_output_shapes
:         
│
*shuffle_batch/TakeManySparseFromTensorsMapTakeManySparseFromTensorsMapshuffle_batch/Squeeze*:
_class0
.,loc:@shuffle_batch/AddManySparseToTensorsMap*<
_output_shapes*
(:         :         :*
	container *
dtype0	*8
shared_name)'shuffle_batch/AddManySparseToTensorsMap
^
SparseToDense/default_valueConst*
dtype0	*
_output_shapes
: *
value
B	 RА
ж
SparseToDenseSparseToDense*shuffle_batch/TakeManySparseFromTensorsMap,shuffle_batch/TakeManySparseFromTensorsMap:2,shuffle_batch/TakeManySparseFromTensorsMap:1SparseToDense/default_value*
Tindices0	*
validate_indices(*
T0	*0
_output_shapes
:                  
U
one_hot/on_valueConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
V
one_hot/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
P
one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :Б
│
one_hotOneHotSparseToDenseone_hot/depthone_hot/on_valueone_hot/off_value*
axis         *
TI0	*5
_output_shapes#
!:                  Б*
T0
F
RankConst*
value	B :*
_output_shapes
: *
dtype0
M
range/startConst*
dtype0*
_output_shapes
: *
value	B :
M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
V
rangeRangerange/startRankrange/delta*
_output_shapes
:*

Tidx0
`
concat/values_0Const*
_output_shapes
:*
dtype0*
valueB"       
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
q
concatConcatV2concat/values_0rangeconcat/axis*
_output_shapes
:*
T0*

Tidx0*
N
t
	transpose	Transposeone_hotconcat*
Tperm0*
T0*5
_output_shapes#
!:                  Б
Z
sequence_lengthIdentityshuffle_batch:2*
T0*#
_output_shapes
:         
R
	rnn/ShapeShape	transpose*
T0*
out_type0*
_output_shapes
:
a
rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
c
rnn/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
c
rnn/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Н
rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
end_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
_output_shapes
: *
new_axis_mask *
Index0*
T0
c
rnn/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_1/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Х
rnn/strided_slice_1StridedSlice	rnn/Shapernn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*
_output_shapes
: *
end_mask *
new_axis_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
Index0*
T0
|
:rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
─
6rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims
ExpandDimsrnn/strided_slice:rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
|
1rnn/MultiRNNCellZeroState/LSTMCellZeroState/ConstConst*
_output_shapes
:*
dtype0*
valueB:А
y
7rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ь
2rnn/MultiRNNCellZeroState/LSTMCellZeroState/concatConcatV26rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims1rnn/MultiRNNCellZeroState/LSTMCellZeroState/Const7rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
~
<rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
╚
8rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_1
ExpandDimsrnn/strided_slice<rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_1/dim*
_output_shapes
:*
T0*

Tdim0
~
3rnn/MultiRNNCellZeroState/LSTMCellZeroState/Const_1Const*
dtype0*
_output_shapes
:*
valueB:А
|
7rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
┘
1rnn/MultiRNNCellZeroState/LSTMCellZeroState/zerosFill2rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat7rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros/Const*(
_output_shapes
:         А*
T0
~
<rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
╚
8rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_2
ExpandDimsrnn/strided_slice<rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_2/dim*
T0*
_output_shapes
:*

Tdim0
~
3rnn/MultiRNNCellZeroState/LSTMCellZeroState/Const_2Const*
dtype0*
_output_shapes
:*
valueB:А
{
9rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
д
4rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat_1ConcatV28rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_23rnn/MultiRNNCellZeroState/LSTMCellZeroState/Const_29rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat_1/axis*
N*

Tidx0*
T0*
_output_shapes
:
~
<rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_3/dimConst*
value	B : *
_output_shapes
: *
dtype0
╚
8rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_3
ExpandDimsrnn/strided_slice<rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_3/dim*
T0*
_output_shapes
:*

Tdim0
~
3rnn/MultiRNNCellZeroState/LSTMCellZeroState/Const_3Const*
_output_shapes
:*
dtype0*
valueB:А
~
9rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
▀
3rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros_1Fill4rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat_19rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros_1/Const*(
_output_shapes
:         А*
T0
~
<rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
╚
8rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims
ExpandDimsrnn/strided_slice<rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims/dim*
_output_shapes
:*
T0*

Tdim0
~
3rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ConstConst*
valueB:А*
_output_shapes
:*
dtype0
{
9rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
д
4rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concatConcatV28rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims3rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/Const9rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat/axis*
_output_shapes
:*
N*
T0*

Tidx0
А
>rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
╠
:rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_1
ExpandDimsrnn/strided_slice>rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_1/dim*
T0*
_output_shapes
:*

Tdim0
А
5rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/Const_1Const*
dtype0*
_output_shapes
:*
valueB:А
~
9rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
▀
3rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zerosFill4rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat9rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros/Const*(
_output_shapes
:         А*
T0
А
>rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_2/dimConst*
value	B : *
_output_shapes
: *
dtype0
╠
:rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_2
ExpandDimsrnn/strided_slice>rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes
:
А
5rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
}
;rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
м
6rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat_1ConcatV2:rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_25rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/Const_2;rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat_1/axis*
_output_shapes
:*
N*
T0*

Tidx0
А
>rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_3/dimConst*
value	B : *
_output_shapes
: *
dtype0
╠
:rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_3
ExpandDimsrnn/strided_slice>rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_3/dim*

Tdim0*
_output_shapes
:*
T0
А
5rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/Const_3Const*
valueB:А*
_output_shapes
:*
dtype0
А
;rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
х
5rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros_1Fill6rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat_1;rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros_1/Const*(
_output_shapes
:         А*
T0
Z
rnn/Shape_1Shapesequence_length*
_output_shapes
:*
out_type0*
T0
^
	rnn/stackPackrnn/strided_slice*
T0*

axis *
N*
_output_shapes
:
O
	rnn/EqualEqualrnn/Shape_1	rnn/stack*
T0*
_output_shapes
:
S
	rnn/ConstConst*
valueB: *
_output_shapes
:*
dtype0
Y
rnn/AllAll	rnn/Equal	rnn/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
А
rnn/Assert/ConstConst*
dtype0*
_output_shapes
: *@
value7B5 B/Expected shape for Tensor sequence_length:0 is 
c
rnn/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
И
rnn/Assert/Assert/data_0Const*
dtype0*
_output_shapes
: *@
value7B5 B/Expected shape for Tensor sequence_length:0 is 
i
rnn/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*!
valueB B but saw shape: 
Р
rnn/Assert/AssertAssertrnn/Allrnn/Assert/Assert/data_0	rnn/stackrnn/Assert/Assert/data_2rnn/Shape_1*
	summarize*
T
2
n
rnn/CheckSeqLenIdentitysequence_length^rnn/Assert/Assert*
T0*#
_output_shapes
:         
T
rnn/Shape_2Shape	transpose*
_output_shapes
:*
out_type0*
T0
c
rnn/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB: 
e
rnn/strided_slice_2/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
e
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ч
rnn/strided_slice_2StridedSlicernn/Shape_2rnn/strided_slice_2/stackrnn/strided_slice_2/stack_1rnn/strided_slice_2/stack_2*
end_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
_output_shapes
: *
new_axis_mask *
Index0*
T0
c
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
e
rnn/strided_slice_3/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
e
rnn/strided_slice_3/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ч
rnn/strided_slice_3StridedSlicernn/Shape_2rnn/strided_slice_3/stackrnn/strided_slice_3/stack_1rnn/strided_slice_3/stack_2*
_output_shapes
: *
end_mask *
new_axis_mask *
ellipsis_mask *

begin_mask *
shrink_axis_mask*
Index0*
T0
T
rnn/ExpandDims/dimConst*
value	B : *
_output_shapes
: *
dtype0
v
rnn/ExpandDims
ExpandDimsrnn/strided_slice_3rnn/ExpandDims/dim*
_output_shapes
:*
T0*

Tdim0
V
rnn/Const_1Const*
valueB:А*
_output_shapes
:*
dtype0
Q
rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
~

rnn/concatConcatV2rnn/ExpandDimsrnn/Const_1rnn/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
T
rnn/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
a
	rnn/zerosFill
rnn/concatrnn/zeros/Const*
T0*(
_output_shapes
:         А
U
rnn/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
j
rnn/MinMinrnn/CheckSeqLenrnn/Const_2*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
U
rnn/Const_3Const*
dtype0*
_output_shapes
:*
valueB: 
j
rnn/MaxMaxrnn/CheckSeqLenrnn/Const_3*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
J
rnn/timeConst*
value	B : *
_output_shapes
: *
dtype0
╘
rnn/TensorArrayTensorArrayV3rnn/strided_slice_2*
dtype0*
clear_after_read(*
dynamic_size( *
_output_shapes

:: */
tensor_array_namernn/dynamic_rnn/output_0*
element_shape:
╒
rnn/TensorArray_1TensorArrayV3rnn/strided_slice_2*
element_shape:*.
tensor_array_namernn/dynamic_rnn/input_0*
_output_shapes

:: *
clear_after_read(*
dynamic_size( *
dtype0
e
rnn/TensorArrayUnstack/ShapeShape	transpose*
_output_shapes
:*
out_type0*
T0
t
*rnn/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
v
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
v
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ь
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*
end_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
_output_shapes
: *
new_axis_mask *
Index0*
T0
d
"rnn/TensorArrayUnstack/range/startConst*
value	B : *
_output_shapes
: *
dtype0
d
"rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
─
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:         
ц
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/range	transposernn/TensorArray_1:1*
_output_shapes
: *
_class
loc:@transpose*
T0
Ч
rnn/while/EnterEnterrnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *$

frame_namernn/while/rnn/while/
в
rnn/while/Enter_1Enterrnn/TensorArray:1*
parallel_iterations *
T0*
_output_shapes
: *$

frame_namernn/while/rnn/while/*
is_constant( 
╘
rnn/while/Enter_2Enter1rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros*
is_constant( *(
_output_shapes
:         А*$

frame_namernn/while/rnn/while/*
T0*
parallel_iterations 
╓
rnn/while/Enter_3Enter3rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *(
_output_shapes
:         А*$

frame_namernn/while/rnn/while/
╓
rnn/while/Enter_4Enter3rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros*
parallel_iterations *
T0*(
_output_shapes
:         А*$

frame_namernn/while/rnn/while/*
is_constant( 
╪
rnn/while/Enter_5Enter5rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros_1*
parallel_iterations *
T0*(
_output_shapes
:         А*$

frame_namernn/while/rnn/while/*
is_constant( 
n
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
_output_shapes
: : *
T0*
N
t
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
_output_shapes
: : *
T0*
N
Ж
rnn/while/Merge_2Mergernn/while/Enter_2rnn/while/NextIteration_2**
_output_shapes
:         А: *
T0*
N
Ж
rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3**
_output_shapes
:         А: *
T0*
N
Ж
rnn/while/Merge_4Mergernn/while/Enter_4rnn/while/NextIteration_4**
_output_shapes
:         А: *
T0*
N
Ж
rnn/while/Merge_5Mergernn/while/Enter_5rnn/while/NextIteration_5**
_output_shapes
:         А: *
T0*
N
з
rnn/while/Less/EnterEnterrnn/strided_slice_2*
is_constant(*
_output_shapes
: *$

frame_namernn/while/rnn/while/*
T0*
parallel_iterations 
^
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
T0*
_output_shapes
: 
F
rnn/while/LoopCondLoopCondrnn/while/Less*
_output_shapes
: 
Ж
rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*"
_class
loc:@rnn/while/Merge*
_output_shapes
: : *
T0
М
rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*
_output_shapes
: : *$
_class
loc:@rnn/while/Merge_1*
T0
░
rnn/while/Switch_2Switchrnn/while/Merge_2rnn/while/LoopCond*$
_class
loc:@rnn/while/Merge_2*<
_output_shapes*
(:         А:         А*
T0
░
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*<
_output_shapes*
(:         А:         А*$
_class
loc:@rnn/while/Merge_3*
T0
░
rnn/while/Switch_4Switchrnn/while/Merge_4rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_4*<
_output_shapes*
(:         А:         А
░
rnn/while/Switch_5Switchrnn/while/Merge_5rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_5*<
_output_shapes*
(:         А:         А
S
rnn/while/IdentityIdentityrnn/while/Switch:1*
_output_shapes
: *
T0
W
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
_output_shapes
: *
T0
i
rnn/while/Identity_2Identityrnn/while/Switch_2:1*(
_output_shapes
:         А*
T0
i
rnn/while/Identity_3Identityrnn/while/Switch_3:1*(
_output_shapes
:         А*
T0
i
rnn/while/Identity_4Identityrnn/while/Switch_4:1*(
_output_shapes
:         А*
T0
i
rnn/while/Identity_5Identityrnn/while/Switch_5:1*
T0*(
_output_shapes
:         А
╢
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
is_constant(*
_output_shapes
:*$

frame_namernn/while/rnn/while/*
T0*
parallel_iterations 
с
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
_output_shapes
: *$

frame_namernn/while/rnn/while/*
parallel_iterations *
is_constant(*
T0
├
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity#rnn/while/TensorArrayReadV3/Enter_1*
dtype0*(
_output_shapes
:         Б
█
Krnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB"     
═
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB
 *нъ╜*
dtype0*
_output_shapes
: 
═
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB
 *нъ=*
dtype0*
_output_shapes
: 
┴
Srnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformKrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
БА*
dtype0*
seed2 *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0*

seed 
╞
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/subSubIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
┌
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulMulSrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
БА
╠
Ernn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniformAddIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
БА*
T0
с
*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
VariableV2*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
БА*
shape:
БА*
dtype0*
shared_name *
	container 
┴
1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AssignAssign*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelErnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
БА
Т
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0* 
_output_shapes
:
БА
л
Trnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/concat/axisConst^rnn/while/Identity*
_output_shapes
: *
dtype0*
value	B :
м
Ornn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/concatConcatV2rnn/while/TensorArrayReadV3rnn/while/Identity_3Trnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         Б
О
Urnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read* 
_output_shapes
:
БА*$

frame_namernn/while/rnn/while/*
parallel_iterations *
is_constant(*
T0
┌
Ornn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/MatMulMatMulOrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/concatUrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/MatMul/Enter*
transpose_b( *
T0*(
_output_shapes
:         А*
transpose_a( 
╞
:rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/ConstConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
╙
(rnn/multi_rnn_cell/cell_0/lstm_cell/bias
VariableV2*
shape:А*
_output_shapes	
:А*
shared_name *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0*
	container 
л
/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AssignAssign(rnn/multi_rnn_cell/cell_0/lstm_cell/bias:rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/Const*
_output_shapes	
:А*
validate_shape(*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0*
use_locking(
Й
-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/readIdentity(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0*
_output_shapes	
:А
И
Vrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/BiasAdd/EnterEnter-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read*
parallel_iterations *
T0*
_output_shapes	
:А*$

frame_namernn/while/rnn/while/*
is_constant(
╬
Prnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/BiasAddBiasAddOrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/MatMulVrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/BiasAdd/Enter*(
_output_shapes
:         А*
data_formatNHWC*
T0
Ы
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/ConstConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
е
Nrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split/split_dimConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
я
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/splitSplitNrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split/split_dimPrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/BiasAdd*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split*
T0
Ю
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add/yConst^rnn/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
К
Brnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/addAddFrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split:2Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add/y*
T0*(
_output_shapes
:         А
╚
Frnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/SigmoidSigmoidBrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add*(
_output_shapes
:         А*
T0
┌
Brnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mulMulFrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Sigmoidrnn/while/Identity_2*
T0*(
_output_shapes
:         А
╠
Hrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Sigmoid_1SigmoidDrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split*
T0*(
_output_shapes
:         А
╞
Crnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/TanhTanhFrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split:1*(
_output_shapes
:         А*
T0
Н
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_1MulHrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Sigmoid_1Crnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Tanh*(
_output_shapes
:         А*
T0
И
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add_1AddBrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mulDrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_1*
T0*(
_output_shapes
:         А
╬
Hrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Sigmoid_2SigmoidFrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split:3*
T0*(
_output_shapes
:         А
╞
Ernn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Tanh_1TanhDrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add_1*(
_output_shapes
:         А*
T0
П
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_2MulHrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Sigmoid_2Ernn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Tanh_1*(
_output_shapes
:         А*
T0
█
Krnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
valueB"А     
═
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
valueB
 *bЧз╜
═
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
valueB
 *bЧз=
┴
Srnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformKrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/shape*

seed *
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
seed2 *
dtype0* 
_output_shapes
:
АА
╞
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/subSubIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/maxIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: 
┌
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/mulMulSrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/RandomUniformIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
АА*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
T0
╠
Ernn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniformAddIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/mulIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/min*
T0* 
_output_shapes
:
АА*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
с
*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
VariableV2*
	container *
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
shared_name * 
_output_shapes
:
АА*
shape:
АА
┴
1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AssignAssign*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelErnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform* 
_output_shapes
:
АА*
validate_shape(*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
T0*
use_locking(
Т
/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
T0* 
_output_shapes
:
АА
л
Trnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/concat/axisConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
╒
Ornn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/concatConcatV2Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_2rnn/while/Identity_5Trnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/concat/axis*
N*

Tidx0*
T0*(
_output_shapes
:         А
О
Urnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*$

frame_namernn/while/rnn/while/
┌
Ornn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/MatMulMatMulOrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/concatUrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/MatMul/Enter*
transpose_b( *(
_output_shapes
:         А*
transpose_a( *
T0
╞
:rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/ConstConst*
dtype0*
_output_shapes	
:А*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
valueBА*    
╙
(rnn/multi_rnn_cell/cell_1/lstm_cell/bias
VariableV2*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes	
:А*
shape:А*
dtype0*
shared_name *
	container 
л
/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/AssignAssign(rnn/multi_rnn_cell/cell_1/lstm_cell/bias:rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/Const*
_output_shapes	
:А*
validate_shape(*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
T0*
use_locking(
Й
-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/readIdentity(rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
T0*
_output_shapes	
:А
И
Vrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/BiasAdd/EnterEnter-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/read*
is_constant(*
_output_shapes	
:А*$

frame_namernn/while/rnn/while/*
T0*
parallel_iterations 
╬
Prnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/BiasAddBiasAddOrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/MatMulVrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/BiasAdd/Enter*
data_formatNHWC*
T0*(
_output_shapes
:         А
Ы
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/ConstConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
е
Nrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split/split_dimConst^rnn/while/Identity*
_output_shapes
: *
dtype0*
value	B :
я
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/splitSplitNrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split/split_dimPrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/BiasAdd*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split
Ю
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add/yConst^rnn/while/Identity*
valueB
 *  А?*
_output_shapes
: *
dtype0
К
Brnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/addAddFrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split:2Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add/y*
T0*(
_output_shapes
:         А
╚
Frnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/SigmoidSigmoidBrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add*(
_output_shapes
:         А*
T0
┌
Brnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mulMulFrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Sigmoidrnn/while/Identity_4*
T0*(
_output_shapes
:         А
╠
Hrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Sigmoid_1SigmoidDrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split*(
_output_shapes
:         А*
T0
╞
Crnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/TanhTanhFrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split:1*(
_output_shapes
:         А*
T0
Н
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_1MulHrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Sigmoid_1Crnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Tanh*
T0*(
_output_shapes
:         А
И
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add_1AddBrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mulDrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_1*
T0*(
_output_shapes
:         А
╬
Hrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Sigmoid_2SigmoidFrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split:3*(
_output_shapes
:         А*
T0
╞
Ernn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Tanh_1TanhDrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add_1*(
_output_shapes
:         А*
T0
П
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2MulHrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Sigmoid_2Ernn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Tanh_1*
T0*(
_output_shapes
:         А
╕
rnn/while/GreaterEqual/EnterEnterrnn/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *#
_output_shapes
:         *$

frame_namernn/while/rnn/while/
Ж
rnn/while/GreaterEqualGreaterEqualrnn/while/Identityrnn/while/GreaterEqual/Enter*
T0*#
_output_shapes
:         
К
rnn/while/Select/EnterEnter	rnn/zeros*
T0*W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2*
parallel_iterations *
is_constant(*(
_output_shapes
:         А*$

frame_namernn/while/rnn/while/
Ь
rnn/while/SelectSelectrnn/while/GreaterEqualrnn/while/Select/EnterDrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2*
T0*(
_output_shapes
:         А*W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2
И
rnn/while/GreaterEqual_1GreaterEqualrnn/while/Identityrnn/while/GreaterEqual/Enter*#
_output_shapes
:         *
T0
Ю
rnn/while/Select_1Selectrnn/while/GreaterEqual_1rnn/while/Identity_2Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add_1*
T0*(
_output_shapes
:         А*W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add_1
И
rnn/while/GreaterEqual_2GreaterEqualrnn/while/Identityrnn/while/GreaterEqual/Enter*
T0*#
_output_shapes
:         
Ю
rnn/while/Select_2Selectrnn/while/GreaterEqual_2rnn/while/Identity_3Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_2*W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_2*(
_output_shapes
:         А*
T0
И
rnn/while/GreaterEqual_3GreaterEqualrnn/while/Identityrnn/while/GreaterEqual/Enter*#
_output_shapes
:         *
T0
Ю
rnn/while/Select_3Selectrnn/while/GreaterEqual_3rnn/while/Identity_4Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add_1*W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add_1*(
_output_shapes
:         А*
T0
И
rnn/while/GreaterEqual_4GreaterEqualrnn/while/Identityrnn/while/GreaterEqual/Enter*#
_output_shapes
:         *
T0
Ю
rnn/while/Select_4Selectrnn/while/GreaterEqual_4rnn/while/Identity_5Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2*(
_output_shapes
:         А*W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2*
T0
Я
3rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterrnn/TensorArray*
_output_shapes
:*$

frame_namernn/while/rnn/while/*
is_constant(*
parallel_iterations *W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2*
T0
о
-rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterrnn/while/Identityrnn/while/Selectrnn/while/Identity_1*
T0*
_output_shapes
: *W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2
f
rnn/while/add/yConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Z
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
T0*
_output_shapes
: 
X
rnn/while/NextIterationNextIterationrnn/while/add*
T0*
_output_shapes
: 
z
rnn/while/NextIteration_1NextIteration-rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
q
rnn/while/NextIteration_2NextIterationrnn/while/Select_1*
T0*(
_output_shapes
:         А
q
rnn/while/NextIteration_3NextIterationrnn/while/Select_2*
T0*(
_output_shapes
:         А
q
rnn/while/NextIteration_4NextIterationrnn/while/Select_3*(
_output_shapes
:         А*
T0
q
rnn/while/NextIteration_5NextIterationrnn/while/Select_4*(
_output_shapes
:         А*
T0
I
rnn/while/ExitExitrnn/while/Switch*
T0*
_output_shapes
: 
M
rnn/while/Exit_1Exitrnn/while/Switch_1*
_output_shapes
: *
T0
_
rnn/while/Exit_2Exitrnn/while/Switch_2*(
_output_shapes
:         А*
T0
_
rnn/while/Exit_3Exitrnn/while/Switch_3*
T0*(
_output_shapes
:         А
_
rnn/while/Exit_4Exitrnn/while/Switch_4*
T0*(
_output_shapes
:         А
_
rnn/while/Exit_5Exitrnn/while/Switch_5*
T0*(
_output_shapes
:         А
Ъ
&rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3rnn/TensorArrayrnn/while/Exit_1*"
_class
loc:@rnn/TensorArray*
_output_shapes
: 
Ж
 rnn/TensorArrayStack/range/startConst*
_output_shapes
: *
dtype0*
value	B : *"
_class
loc:@rnn/TensorArray
Ж
 rnn/TensorArrayStack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*"
_class
loc:@rnn/TensorArray
ф
rnn/TensorArrayStack/rangeRange rnn/TensorArrayStack/range/start&rnn/TensorArrayStack/TensorArraySizeV3 rnn/TensorArrayStack/range/delta*#
_output_shapes
:         *"
_class
loc:@rnn/TensorArray*

Tidx0
Н
(rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3rnn/TensorArrayrnn/TensorArrayStack/rangernn/while/Exit_1*5
_output_shapes#
!:                  А*
dtype0*"
_class
loc:@rnn/TensorArray*%
element_shape:         А
V
rnn/Const_4Const*
dtype0*
_output_shapes
:*
valueB:А
J
rnn/RankConst*
value	B :*
_output_shapes
: *
dtype0
Q
rnn/range/startConst*
dtype0*
_output_shapes
: *
value	B :
Q
rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
f
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*

Tidx0*
_output_shapes
:
f
rnn/concat_1/values_0Const*
valueB"       *
_output_shapes
:*
dtype0
S
rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
З
rnn/concat_1ConcatV2rnn/concat_1/values_0	rnn/rangernn/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
Я
rnn/transpose	Transpose(rnn/TensorArrayStack/TensorArrayGatherV3rnn/concat_1*
Tperm0*5
_output_shapes#
!:                  А*
T0
j
select_last_activations/ShapeShapernn/transpose*
T0*
_output_shapes
:*
out_type0
u
+select_last_activations/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
w
-select_last_activations/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-select_last_activations/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ё
%select_last_activations/strided_sliceStridedSliceselect_last_activations/Shape+select_last_activations/strided_slice/stack-select_last_activations/strided_slice/stack_1-select_last_activations/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0*
end_mask *
new_axis_mask *

begin_mask *
ellipsis_mask 
w
-select_last_activations/strided_slice_1/stackConst*
valueB:*
_output_shapes
:*
dtype0
y
/select_last_activations/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/select_last_activations/strided_slice_1/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
∙
'select_last_activations/strided_slice_1StridedSliceselect_last_activations/Shape-select_last_activations/strided_slice_1/stack/select_last_activations/strided_slice_1/stack_1/select_last_activations/strided_slice_1/stack_2*
_output_shapes
: *
end_mask *
new_axis_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
Index0*
T0
w
-select_last_activations/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
y
/select_last_activations/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
y
/select_last_activations/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
∙
'select_last_activations/strided_slice_2StridedSliceselect_last_activations/Shape-select_last_activations/strided_slice_2/stack/select_last_activations/strided_slice_2/stack_1/select_last_activations/strided_slice_2/stack_2*

begin_mask *
ellipsis_mask *
_output_shapes
: *
end_mask *
Index0*
T0*
shrink_axis_mask*
new_axis_mask 
r
'select_last_activations/Reshape/shape/0Const*
dtype0*
_output_shapes
: *
valueB :
         
╣
%select_last_activations/Reshape/shapePack'select_last_activations/Reshape/shape/0'select_last_activations/strided_slice_2*
T0*

axis *
N*
_output_shapes
:
й
select_last_activations/ReshapeReshapernn/transpose%select_last_activations/Reshape/shape*0
_output_shapes
:                  *
Tshape0*
T0
e
#select_last_activations/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
e
#select_last_activations/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
╚
select_last_activations/rangeRange#select_last_activations/range/start%select_last_activations/strided_slice#select_last_activations/range/delta*#
_output_shapes
:         *

Tidx0
Ш
select_last_activations/mulMulselect_last_activations/range'select_last_activations/strided_slice_1*
T0*#
_output_shapes
:         
~
select_last_activations/addAddselect_last_activations/mulshuffle_batch:2*#
_output_shapes
:         *
T0
_
select_last_activations/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
М
select_last_activations/subSubselect_last_activations/addselect_last_activations/sub/y*
T0*#
_output_shapes
:         
╟
select_last_activations/GatherGatherselect_last_activations/Reshapeselect_last_activations/sub*(
_output_shapes
:         А*
validate_indices(*
Tparams0*
Tindices0
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
_class
loc:@dense/kernel*
valueB"А   А   
С
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *q─╛*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@dense/kernel*
valueB
 *q─>
ч
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
_class
loc:@dense/kernel* 
_output_shapes
:
АА*
T0*
dtype0*
seed2 *

seed 
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
_class
loc:@dense/kernel*
T0
т
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel* 
_output_shapes
:
АА*
T0
╘
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min* 
_output_shapes
:
АА*
_class
loc:@dense/kernel*
T0
е
dense/kernel
VariableV2*
shape:
АА* 
_output_shapes
:
АА*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
╔
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
АА*
_class
loc:@dense/kernel
w
dense/kernel/readIdentitydense/kernel*
T0* 
_output_shapes
:
АА*
_class
loc:@dense/kernel
К
dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
_class
loc:@dense/bias*
valueBА*    
Ч

dense/bias
VariableV2*
	container *
dtype0*
_class
loc:@dense/bias*
_output_shapes	
:А*
shape:А*
shared_name 
│
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*
_class
loc:@dense/bias
l
dense/bias/readIdentity
dense/bias*
_output_shapes	
:А*
_class
loc:@dense/bias*
T0
в
dense/MatMulMatMulselect_last_activations/Gatherdense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:         А*
transpose_a( 
Б
dense/BiasAddBiasAdddense/MatMuldense/bias/read*(
_output_shapes
:         А*
T0*
data_formatNHWC
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"А      *
_output_shapes
:*
dtype0
Х
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *3&[╛*
_output_shapes
: *
dtype0
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *3&[>
ь
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
T0*
dtype0*
seed2 *

seed 
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
T0
щ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes
:	А*!
_class
loc:@dense_1/kernel*
T0
█
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	А*!
_class
loc:@dense_1/kernel
з
dense_1/kernel
VariableV2*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
shape:	А*
dtype0*
shared_name *
	container 
╨
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
T0*
validate_shape(*
use_locking(
|
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
М
dense_1/bias/Initializer/zerosConst*
_output_shapes
:*
dtype0*
_class
loc:@dense_1/bias*
valueB*    
Щ
dense_1/bias
VariableV2*
shared_name *
_class
loc:@dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
║
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
q
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
_output_shapes
:*
T0
С
dense_2/MatMulMatMul
dense/Reludense_1/kernel/read*
transpose_b( *
T0*'
_output_shapes
:         *
transpose_a( 
Ж
dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:         
q
mean_squared_error/SubSubdense_2/BiasAddshuffle_batch:1*'
_output_shapes
:         *
T0
m
mean_squared_error/SquareSquaremean_squared_error/Sub*
T0*'
_output_shapes
:         
t
/mean_squared_error/assert_broadcastable/weightsConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
x
5mean_squared_error/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
v
4mean_squared_error/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
Н
4mean_squared_error/assert_broadcastable/values/shapeShapemean_squared_error/Square*
T0*
_output_shapes
:*
out_type0
u
3mean_squared_error/assert_broadcastable/values/rankConst*
value	B :*
_output_shapes
: *
dtype0
K
Cmean_squared_error/assert_broadcastable/static_scalar_check_successNoOp
й
mean_squared_error/ToFloat_3/xConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
_output_shapes
: *
dtype0
К
mean_squared_error/MulMulmean_squared_error/Squaremean_squared_error/ToFloat_3/x*'
_output_shapes
:         *
T0
п
mean_squared_error/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
Н
mean_squared_error/SumSummean_squared_error/Mulmean_squared_error/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
▒
&mean_squared_error/num_present/Equal/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
Ц
$mean_squared_error/num_present/EqualEqualmean_squared_error/ToFloat_3/x&mean_squared_error/num_present/Equal/y*
T0*
_output_shapes
: 
┤
)mean_squared_error/num_present/zeros_likeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
_output_shapes
: *
dtype0
╖
.mean_squared_error/num_present/ones_like/ShapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB 
╣
.mean_squared_error/num_present/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
_output_shapes
: *
dtype0
▒
(mean_squared_error/num_present/ones_likeFill.mean_squared_error/num_present/ones_like/Shape.mean_squared_error/num_present/ones_like/Const*
T0*
_output_shapes
: 
╦
%mean_squared_error/num_present/SelectSelect$mean_squared_error/num_present/Equal)mean_squared_error/num_present/zeros_like(mean_squared_error/num_present/ones_like*
T0*
_output_shapes
: 
▄
Smean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
┌
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
value	B : 
ё
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shapeShapemean_squared_error/SquareD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
out_type0*
T0
┘
Qmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
value	B :*
_output_shapes
: *
dtype0
п
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpD^mean_squared_error/assert_broadcastable/static_scalar_check_success
├
@mean_squared_error/num_present/broadcast_weights/ones_like/ShapeShapemean_squared_error/SquareD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
п
@mean_squared_error/num_present/broadcast_weights/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
_output_shapes
: *
dtype0
°
:mean_squared_error/num_present/broadcast_weights/ones_likeFill@mean_squared_error/num_present/broadcast_weights/ones_like/Shape@mean_squared_error/num_present/broadcast_weights/ones_like/Const*'
_output_shapes
:         *
T0
╠
0mean_squared_error/num_present/broadcast_weightsMul%mean_squared_error/num_present/Select:mean_squared_error/num_present/broadcast_weights/ones_like*
T0*'
_output_shapes
:         
╗
$mean_squared_error/num_present/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
:*
valueB"       
╗
mean_squared_error/num_presentSum0mean_squared_error/num_present/broadcast_weights$mean_squared_error/num_present/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
г
mean_squared_error/Const_1ConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
С
mean_squared_error/Sum_1Summean_squared_error/Summean_squared_error/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
з
mean_squared_error/Greater/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
Д
mean_squared_error/GreaterGreatermean_squared_error/num_presentmean_squared_error/Greater/y*
T0*
_output_shapes
: 
е
mean_squared_error/Equal/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
_output_shapes
: *
dtype0
~
mean_squared_error/EqualEqualmean_squared_error/num_presentmean_squared_error/Equal/y*
_output_shapes
: *
T0
л
"mean_squared_error/ones_like/ShapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
н
"mean_squared_error/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
_output_shapes
: *
dtype0
Н
mean_squared_error/ones_likeFill"mean_squared_error/ones_like/Shape"mean_squared_error/ones_like/Const*
_output_shapes
: *
T0
Ь
mean_squared_error/SelectSelectmean_squared_error/Equalmean_squared_error/ones_likemean_squared_error/num_present*
_output_shapes
: *
T0
w
mean_squared_error/divRealDivmean_squared_error/Sum_1mean_squared_error/Select*
T0*
_output_shapes
: 
и
mean_squared_error/zeros_likeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
Ц
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/divmean_squared_error/zeros_like*
_output_shapes
: *
T0
O

mean/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
n

mean/total
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
Ь
mean/total/AssignAssign
mean/total
mean/zeros*
_class
loc:@mean/total*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
g
mean/total/readIdentity
mean/total*
T0*
_output_shapes
: *
_class
loc:@mean/total
Q
mean/zeros_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
n

mean/count
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
Ю
mean/count/AssignAssign
mean/countmean/zeros_1*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@mean/count
g
mean/count/readIdentity
mean/count*
_output_shapes
: *
_class
loc:@mean/count*
T0
K
	mean/SizeConst*
_output_shapes
: *
dtype0*
value	B :
Q
mean/ToFloat_1Cast	mean/Size*
_output_shapes
: *

DstT0*

SrcT0
M

mean/ConstConst*
dtype0*
_output_shapes
: *
valueB 
s
mean/SumSummean_squared_error/value
mean/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
Д
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
_class
loc:@mean/total*
_output_shapes
: *
T0*
use_locking( 
з
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1^mean_squared_error/value*
use_locking( *
T0*
_output_shapes
: *
_class
loc:@mean/count
S
mean/Greater/yConst*
valueB
 *    *
_output_shapes
: *
dtype0
Y
mean/GreaterGreatermean/count/readmean/Greater/y*
T0*
_output_shapes
: 
Z
mean/truedivRealDivmean/total/readmean/count/read*
_output_shapes
: *
T0
Q
mean/value/eConst*
valueB
 *    *
_output_shapes
: *
dtype0
_

mean/valueSelectmean/Greatermean/truedivmean/value/e*
T0*
_output_shapes
: 
U
mean/Greater_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
mean/Greater_1Greatermean/AssignAdd_1mean/Greater_1/y*
T0*
_output_shapes
: 
\
mean/truediv_1RealDivmean/AssignAddmean/AssignAdd_1*
_output_shapes
: *
T0
U
mean/update_op/eConst*
_output_shapes
: *
dtype0*
valueB
 *    
k
mean/update_opSelectmean/Greater_1mean/truediv_1mean/update_op/e*
T0*
_output_shapes
: 
#

group_depsNoOp^mean/update_op
{
eval_step/Initializer/zerosConst*
_class
loc:@eval_step*
value	B	 R *
_output_shapes
: *
dtype0	
Л
	eval_step
VariableV2*
	container *
dtype0	*
_class
loc:@eval_step*
shared_name *
_output_shapes
: *
shape: 
к
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
_class
loc:@eval_step*
_output_shapes
: *
T0	*
validate_shape(*
use_locking(
d
eval_step/readIdentity	eval_step*
_class
loc:@eval_step*
_output_shapes
: *
T0	
Q
AssignAdd/valueConst*
value	B	 R*
_output_shapes
: *
dtype0	
Д
	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
use_locking( *
T0	*
_output_shapes
: *
_class
loc:@eval_step
┼
initNoOp^global_step/Assign2^rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Assign0^rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Assign2^rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Assign0^rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Assign^dense/kernel/Assign^dense/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1
Я
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
_output_shapes
: *
dtype0	*
_class
loc:@global_step
▀
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitialized*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: *
dtype0
█
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitialized(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
: *
dtype0
▀
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitialized*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
dtype0*
_output_shapes
: *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
█
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitialized(rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes
: *
dtype0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
г
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializeddense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
Я
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitialized
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
з
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
г
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializeddense_1/bias*
dtype0*
_output_shapes
: *
_class
loc:@dense_1/bias
Я
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitialized
mean/total*
_class
loc:@mean/total*
_output_shapes
: *
dtype0
а
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitialized
mean/count*
_class
loc:@mean/count*
_output_shapes
: *
dtype0
Ю
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitialized	eval_step*
_class
loc:@eval_step*
dtype0	*
_output_shapes
: 
Ж
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_11*

axis *
_output_shapes
:*
T0
*
N
y
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack*
_output_shapes
:
В
$report_uninitialized_variables/ConstConst*й
valueЯBЬBglobal_stepB*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB(rnn/multi_rnn_cell/cell_0/lstm_cell/biasB*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelB(rnn/multi_rnn_cell/cell_1/lstm_cell/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasB
mean/totalB
mean/countB	eval_step*
dtype0*
_output_shapes
:
{
1report_uninitialized_variables/boolean_mask/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
Й
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Л
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Л
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
┘
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
Index0*
T0*
_output_shapes
:*
shrink_axis_mask 
М
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
ї
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
}
3report_uninitialized_variables/boolean_mask/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Л
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
Н
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
Н
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
с
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
п
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod*

axis *
_output_shapes
:*
T0*
N
y
7report_uninitialized_variables/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
л
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
╦
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat*
Tshape0*
_output_shapes
:*
T0
О
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst*
valueB:
         *
_output_shapes
:*
dtype0
█
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape*
T0
*
Tshape0*
_output_shapes
:
Ъ
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1*'
_output_shapes
:         
╢
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where*
squeeze_dims
*#
_output_shapes
:         *
T0	
В
2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze*#
_output_shapes
:         *
validate_indices(*
Tparams0*
Tindices0	
g
$report_uninitialized_resources/ConstConst*
dtype0*
_output_shapes
: *
valueB 
O
concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
└
concat_1ConcatV22report_uninitialized_variables/boolean_mask/Gather$report_uninitialized_resources/Constconcat_1/axis*

Tidx0*
T0*
N*#
_output_shapes
:         
б
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
с
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitialized*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0*
_output_shapes
: *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
▌
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitialized(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0*
_output_shapes
: 
с
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitialized*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: *
dtype0
▌
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitialized(rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
dtype0*
_output_shapes
: *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
е
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializeddense/kernel*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0
б
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitialized
dense/bias*
dtype0*
_output_shapes
: *
_class
loc:@dense/bias
й
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializeddense_1/kernel*
_output_shapes
: *
dtype0*!
_class
loc:@dense_1/kernel
е
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
_output_shapes
: *
dtype0
Ё
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_8*
T0
*

axis *
N	*
_output_shapes
:	
}
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack*
_output_shapes
:	
с
&report_uninitialized_variables_1/ConstConst*Ж
value№B∙	Bglobal_stepB*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB(rnn/multi_rnn_cell/cell_0/lstm_cell/biasB*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelB(rnn/multi_rnn_cell/cell_1/lstm_cell/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/bias*
_output_shapes
:	*
dtype0
}
3report_uninitialized_variables_1/boolean_mask/ShapeConst*
dtype0*
_output_shapes
:*
valueB:	
Л
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Н
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
у
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2*
_output_shapes
:*
end_mask *
new_axis_mask *
ellipsis_mask *

begin_mask*
shrink_axis_mask *
Index0*
T0
О
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
√
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

5report_uninitialized_variables_1/boolean_mask/Shape_1Const*
valueB:	*
dtype0*
_output_shapes
:
Н
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
П
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const*
valueB: *
_output_shapes
:*
dtype0
П
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ы
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2*
end_mask*

begin_mask *
ellipsis_mask *
shrink_axis_mask *
_output_shapes
: *
new_axis_mask *
Index0*
T0
│
=report_uninitialized_variables_1/boolean_mask/concat/values_0Pack2report_uninitialized_variables_1/boolean_mask/Prod*

axis *
_output_shapes
:*
T0*
N
{
9report_uninitialized_variables_1/boolean_mask/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
│
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/concat/values_0=report_uninitialized_variables_1/boolean_mask/strided_slice_19report_uninitialized_variables_1/boolean_mask/concat/axis*
_output_shapes
:*
N*
T0*

Tidx0
╤
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat*
Tshape0*
_output_shapes
:	*
T0
Р
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         
с
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape*
T0
*
_output_shapes
:	*
Tshape0
Ю
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1*'
_output_shapes
:         
║
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where*
squeeze_dims
*#
_output_shapes
:         *
T0	
И
4report_uninitialized_variables_1/boolean_mask/GatherGather5report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze*
Tindices0	*
validate_indices(*
Tparams0*#
_output_shapes
:         
I
init_2NoOp^mean/total/Assign^mean/count/Assign^eval_step/Assign
?
init_all_tablesNoOp&^string_to_index/hash_table/table_init
/
group_deps_2NoOp^init_2^init_all_tables
┼
Merge/MergeSummaryMergeSummarySenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_256_of_768_full+shuffle_batch/fraction_over_100_of_900_full*
N*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_6a1fe2facd3e46ff966205dad620aeb4/part*
_output_shapes
: *
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
\
save/ShardedFilename/shardConst*
value	B : *
_output_shapes
: *
dtype0
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
╙
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:	*Ж
value№B∙	B
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_stepB(rnn/multi_rnn_cell/cell_0/lstm_cell/biasB*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB(rnn/multi_rnn_cell/cell_1/lstm_cell/biasB*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
u
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:	*%
valueB	B B B B B B B B B 
э
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices
dense/biasdense/kerneldense_1/biasdense_1/kernelglobal_step(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel(rnn/multi_rnn_cell/cell_1/lstm_cell/bias*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
dtypes
2		
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
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
n
save/RestoreV2/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
dense/bias
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Я
save/AssignAssign
dense/biassave/RestoreV2*
_class
loc:@dense/bias*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
r
save/RestoreV2_1/tensor_namesConst*
_output_shapes
:*
dtype0*!
valueBBdense/kernel
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
м
save/Assign_1Assigndense/kernelsave/RestoreV2_1*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
АА*
_class
loc:@dense/kernel
r
save/RestoreV2_2/tensor_namesConst*
dtype0*
_output_shapes
:*!
valueBBdense_1/bias
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
ж
save/Assign_2Assigndense_1/biassave/RestoreV2_2*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*
_class
loc:@dense_1/bias
t
save/RestoreV2_3/tensor_namesConst*
dtype0*
_output_shapes
:*#
valueBBdense_1/kernel
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
п
save/Assign_3Assigndense_1/kernelsave/RestoreV2_3*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	А*!
_class
loc:@dense_1/kernel
q
save/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBglobal_step
j
!save/RestoreV2_4/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ц
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2	
а
save/Assign_4Assignglobal_stepsave/RestoreV2_4*
_output_shapes
: *
validate_shape(*
_class
loc:@global_step*
T0	*
use_locking(
О
save/RestoreV2_5/tensor_namesConst*=
value4B2B(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
:*
dtype0
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
▀
save/Assign_5Assign(rnn/multi_rnn_cell/cell_0/lstm_cell/biassave/RestoreV2_5*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias
Р
save/RestoreV2_6/tensor_namesConst*
_output_shapes
:*
dtype0*?
value6B4B*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
ш
save/Assign_6Assign*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelsave/RestoreV2_6*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
БА*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
О
save/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*=
value4B2B(rnn/multi_rnn_cell/cell_1/lstm_cell/bias
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
▀
save/Assign_7Assign(rnn/multi_rnn_cell/cell_1/lstm_cell/biassave/RestoreV2_7*
_output_shapes	
:А*
validate_shape(*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
T0*
use_locking(
Р
save/RestoreV2_8/tensor_namesConst*
dtype0*
_output_shapes
:*?
value6B4B*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
ш
save/Assign_8Assign*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelsave/RestoreV2_8*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
АА*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
и
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard"Є▓╨═G╚     Cpsi	bH╖RR╓AJ║Р
∙9╫9
9
Add
x"T
y"T
z"T"
Ttype:
2	
л
AddManySparseToTensorsMap
sparse_indices	
sparse_values"T
sparse_shape	
sparse_handles	"	
Ttype"
	containerstring "
shared_namestring И
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
p
	AssignAdd
ref"TА

value"T

output_ref"TА"
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
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

A
Equal
x"T
y"T
z
"
Ttype:
2	
Р
)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
М
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
в
	HashTable
table_handleА"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
.
Identity

input"T
output"T"	
Ttype
`
InitializeTable
table_handleА
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype
N
IsVariableInitialized
ref"dtypeА
is_initialized
"
dtypetypeШ
7
Less
x"T
y"T
z
"
Ttype:
2		


LogicalNot
x

y

u
LookupTableFind
table_handleА
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
!
LoopCond	
input


output

o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
Й
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	Р
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
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
Й
Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	Р
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
М
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint         "	
Ttype"
TItype0	:
2	
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
К
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
cancel_pending_enqueuesbool( И
М
QueueDequeueUpToV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint         И
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint         И
&
QueueSizeV2

handle
sizeИ
°
RandomShuffleQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint         "
min_after_dequeueint "
seedint "
seed2int "
	containerstring "
shared_namestring И
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
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
A
Relu
features"T
activations"T"
Ttype:
2		
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
/
Sigmoid
x"T
y"T"
Ttype:	
2
╝
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
Ў
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
K
StringSplit	
input
	delimiter
indices	

values	
shape	
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
Й
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
╢
TakeManySparseFromTensorsMap
sparse_handles	
sparse_indices	
sparse_values"dtype
sparse_shape	"
dtypetype"
	containerstring "
shared_namestring И
,
Tanh
x"T
y"T"
Ttype:	
2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeИ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
TtypeИ
9
TensorArraySizeV3

handle
flow_in
sizeИ
╕
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("
tensor_array_namestring И
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
TtypeИ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И

Where	
input
	
index	*1.2.02v1.2.0-rc2-21-g12f033dоИ

global_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
_class
loc:@global_step*
value	B	 R 
П
global_step
VariableV2*
	container *
dtype0	*
_class
loc:@global_step*
shared_name *
_output_shapes
: *
shape: 
▓
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
validate_shape(*
T0	*
_output_shapes
: *
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_output_shapes
: *
_class
loc:@global_step
є
"enqueue_input/random_shuffle_queueRandomShuffleQueueV2*
shapes
: : : : : : *
shared_name *
capacityА*
min_after_dequeueА*
_output_shapes
: *
component_types

2				*

seed *
	container *
seed2 
^
enqueue_input/PlaceholderPlaceholder*
dtype0	*
shape:*
_output_shapes
:
`
enqueue_input/Placeholder_1Placeholder*
shape:*
dtype0*
_output_shapes
:
`
enqueue_input/Placeholder_2Placeholder*
dtype0	*
shape:*
_output_shapes
:
`
enqueue_input/Placeholder_3Placeholder*
shape:*
dtype0	*
_output_shapes
:
`
enqueue_input/Placeholder_4Placeholder*
dtype0	*
shape:*
_output_shapes
:
`
enqueue_input/Placeholder_5Placeholder*
_output_shapes
:*
shape:*
dtype0
╩
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2enqueue_input/Placeholder_3enqueue_input/Placeholder_4enqueue_input/Placeholder_5*

timeout_ms         *
Tcomponents

2				
`
enqueue_input/Placeholder_6Placeholder*
dtype0	*
shape:*
_output_shapes
:
`
enqueue_input/Placeholder_7Placeholder*
dtype0*
shape:*
_output_shapes
:
`
enqueue_input/Placeholder_8Placeholder*
dtype0	*
shape:*
_output_shapes
:
`
enqueue_input/Placeholder_9Placeholder*
_output_shapes
:*
shape:*
dtype0	
a
enqueue_input/Placeholder_10Placeholder*
shape:*
dtype0	*
_output_shapes
:
a
enqueue_input/Placeholder_11Placeholder*
_output_shapes
:*
shape:*
dtype0
╨
0enqueue_input/random_shuffle_queue_EnqueueMany_1QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_6enqueue_input/Placeholder_7enqueue_input/Placeholder_8enqueue_input/Placeholder_9enqueue_input/Placeholder_10enqueue_input/Placeholder_11*

timeout_ms         *
Tcomponents

2				
a
enqueue_input/Placeholder_12Placeholder*
_output_shapes
:*
dtype0	*
shape:
a
enqueue_input/Placeholder_13Placeholder*
dtype0*
shape:*
_output_shapes
:
a
enqueue_input/Placeholder_14Placeholder*
_output_shapes
:*
shape:*
dtype0	
a
enqueue_input/Placeholder_15Placeholder*
_output_shapes
:*
shape:*
dtype0	
a
enqueue_input/Placeholder_16Placeholder*
_output_shapes
:*
dtype0	*
shape:
a
enqueue_input/Placeholder_17Placeholder*
_output_shapes
:*
dtype0*
shape:
╘
0enqueue_input/random_shuffle_queue_EnqueueMany_2QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_12enqueue_input/Placeholder_13enqueue_input/Placeholder_14enqueue_input/Placeholder_15enqueue_input/Placeholder_16enqueue_input/Placeholder_17*

timeout_ms         *
Tcomponents

2				
a
enqueue_input/Placeholder_18Placeholder*
shape:*
dtype0	*
_output_shapes
:
a
enqueue_input/Placeholder_19Placeholder*
dtype0*
shape:*
_output_shapes
:
a
enqueue_input/Placeholder_20Placeholder*
shape:*
dtype0	*
_output_shapes
:
a
enqueue_input/Placeholder_21Placeholder*
shape:*
dtype0	*
_output_shapes
:
a
enqueue_input/Placeholder_22Placeholder*
_output_shapes
:*
shape:*
dtype0	
a
enqueue_input/Placeholder_23Placeholder*
_output_shapes
:*
shape:*
dtype0
╘
0enqueue_input/random_shuffle_queue_EnqueueMany_3QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_18enqueue_input/Placeholder_19enqueue_input/Placeholder_20enqueue_input/Placeholder_21enqueue_input/Placeholder_22enqueue_input/Placeholder_23*

timeout_ms         *
Tcomponents

2				
{
(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue*
cancel_pending_enqueues( 
}
*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue*
cancel_pending_enqueues(
r
'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue*
_output_shapes
: 
V
enqueue_input/sub/yConst*
value
B :А*
_output_shapes
: *
dtype0
w
enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y*
_output_shapes
: *
T0
Y
enqueue_input/Maximum/xConst*
value	B : *
_output_shapes
: *
dtype0
m
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub*
_output_shapes
: *
T0
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
 *лкк:
b
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y*
T0*
_output_shapes
: 
ь
Xenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_256_of_768_full/tagsConst*d
value[BY BSenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_256_of_768_full*
dtype0*
_output_shapes
: 
Є
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_256_of_768_fullScalarSummaryXenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_256_of_768_full/tagsenqueue_input/mul*
T0*
_output_shapes
: 
d
"random_shuffle_queue_DequeueUpTo/nConst*
_output_shapes
: *
dtype0*
value	B :@
и
 random_shuffle_queue_DequeueUpToQueueDequeueUpToV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueUpTo/n*

timeout_ms         *n
_output_shapes\
Z:         :         :         :         :         :         *
component_types

2				
F
ConstConst*
valueB B *
dtype0*
_output_shapes
: 
Г
StringSplitStringSplit"random_shuffle_queue_DequeueUpTo:1Const*<
_output_shapes*
(:         :         :
╙
mappingConst*
_output_shapes	
:А*
dtype0*Ц
valueМBЙАB BBBBBBBBB	B
BBBBBBBBBBBBBBBBBBBBBB B!B"B#B$B%B&B'B(B)B*B+B,B-B.B/B0B1B2B3B4B5B6B7B8B9B:B;B<B=B>B?B@BABBBCBDBEBFBGBHBIBJBKBLBMBNBOBPBQBRBSBTBUBVBWBXBYBZB[B\B]B^B_B`BaBbBcBdBeBfBgBhBiBjBkBlBmBnBoBpBqBrBsBtBuBvBwBxByBzB{B|B}B~BB┬АB┬БB┬ВB┬ГB┬ДB┬ЕB┬ЖB┬ЗB┬ИB┬ЙB┬КB┬ЛB┬МB┬НB┬ОB┬ПB┬РB┬СB┬ТB┬УB┬ФB┬ХB┬ЦB┬ЧB┬ШB┬ЩB┬ЪB┬ЫB┬ЬB┬ЭB┬ЮB┬ЯB┬аB┬бB┬вB┬гB┬дB┬еB┬жB┬зB┬иB┬йB┬кB┬лB┬мB┬нB┬оB┬пB┬░B┬▒B┬▓B┬│B┬┤B┬╡B┬╢B┬╖B┬╕B┬╣B┬║B┬╗B┬╝B┬╜B┬╛B┬┐B├АB├БB├ВB├ГB├ДB├ЕB├ЖB├ЗB├ИB├ЙB├КB├ЛB├МB├НB├ОB├ПB├РB├СB├ТB├УB├ФB├ХB├ЦB├ЧB├ШB├ЩB├ЪB├ЫB├ЬB├ЭB├ЮB├ЯB├аB├бB├вB├гB├дB├еB├жB├зB├иB├йB├кB├лB├мB├нB├оB├пB├░B├▒B├▓B├│B├┤B├╡B├╢B├╖B├╕B├╣B├║B├╗B├╝B├╜B├╛B├┐
W
string_to_index/SizeConst*
dtype0*
_output_shapes
: *
value
B :А
]
string_to_index/range/startConst*
value	B : *
_output_shapes
: *
dtype0
]
string_to_index/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
Ч
string_to_index/rangeRangestring_to_index/range/startstring_to_index/Sizestring_to_index/range/delta*

Tidx0*
_output_shapes	
:А
k
string_to_index/ToInt64Caststring_to_index/range*

SrcT0*
_output_shapes	
:А*

DstT0	
и
string_to_index/hash_table	HashTable*
	key_dtype0*
_output_shapes
:*
shared_name *
use_node_name_sharing( *
value_dtype0	*
	container 
k
 string_to_index/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
         
╜
%string_to_index/hash_table/table_initInitializeTablestring_to_index/hash_tablemappingstring_to_index/ToInt64*-
_class#
!loc:@string_to_index/hash_table*

Tkey0*

Tval0	
▄
hash_table_LookupLookupTableFindstring_to_index/hash_tableStringSplit:1 string_to_index/hash_table/Const*

Tout0	*-
_class#
!loc:@string_to_index/hash_table*#
_output_shapes
:         *	
Tin0
└
stackPack"random_shuffle_queue_DequeueUpTo:2"random_shuffle_queue_DequeueUpTo:3"random_shuffle_queue_DequeueUpTo:4*
T0	*

axis*
N*'
_output_shapes
:         
W
ToFloatCaststack*

SrcT0	*'
_output_shapes
:         *

DstT0
N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C
X
truedivRealDivToFloat	truediv/y*'
_output_shapes
:         *
T0
U
shuffle_batch/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
┼
'shuffle_batch/AddManySparseToTensorsMapAddManySparseToTensorsMapStringSplithash_table_LookupStringSplit:2*
shared_name *
T0	*#
_output_shapes
:         *
	container 
o
shuffle_batch/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
         
л
shuffle_batch/ExpandDims
ExpandDims'shuffle_batch/AddManySparseToTensorsMapshuffle_batch/ExpandDims/dim*'
_output_shapes
:         *
T0	*

Tdim0
ё
"shuffle_batch/random_shuffle_queueRandomShuffleQueueV2*
shapes
::: *
shared_name *
min_after_dequeued*
capacityш*
_output_shapes
: *
component_types
2	*

seed *
seed2 *
	container 
т
.shuffle_batch/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"shuffle_batch/random_shuffle_queueshuffle_batch/ExpandDimstruediv"random_shuffle_queue_DequeueUpTo:5*

timeout_ms         *
Tcomponents
2	
{
(shuffle_batch/random_shuffle_queue_CloseQueueCloseV2"shuffle_batch/random_shuffle_queue*
cancel_pending_enqueues( 
}
*shuffle_batch/random_shuffle_queue_Close_1QueueCloseV2"shuffle_batch/random_shuffle_queue*
cancel_pending_enqueues(
r
'shuffle_batch/random_shuffle_queue_SizeQueueSizeV2"shuffle_batch/random_shuffle_queue*
_output_shapes
: 
U
shuffle_batch/sub/yConst*
dtype0*
_output_shapes
: *
value	B :d
w
shuffle_batch/subSub'shuffle_batch/random_shuffle_queue_Sizeshuffle_batch/sub/y*
_output_shapes
: *
T0
Y
shuffle_batch/Maximum/xConst*
value	B : *
dtype0*
_output_shapes
: 
m
shuffle_batch/MaximumMaximumshuffle_batch/Maximum/xshuffle_batch/sub*
_output_shapes
: *
T0
a
shuffle_batch/CastCastshuffle_batch/Maximum*

SrcT0*
_output_shapes
: *

DstT0
X
shuffle_batch/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *┤вС:
b
shuffle_batch/mulMulshuffle_batch/Castshuffle_batch/mul/y*
T0*
_output_shapes
: 
Ь
0shuffle_batch/fraction_over_100_of_900_full/tagsConst*<
value3B1 B+shuffle_batch/fraction_over_100_of_900_full*
dtype0*
_output_shapes
: 
в
+shuffle_batch/fraction_over_100_of_900_fullScalarSummary0shuffle_batch/fraction_over_100_of_900_full/tagsshuffle_batch/mul*
T0*
_output_shapes
: 
Q
shuffle_batch/nConst*
value	B :@*
dtype0*
_output_shapes
: 
┌
shuffle_batchQueueDequeueUpToV2"shuffle_batch/random_shuffle_queueshuffle_batch/n*

timeout_ms         *I
_output_shapes7
5:         :         :         *
component_types
2	
t
shuffle_batch/SqueezeSqueezeshuffle_batch*
T0	*#
_output_shapes
:         *
squeeze_dims

│
*shuffle_batch/TakeManySparseFromTensorsMapTakeManySparseFromTensorsMapshuffle_batch/Squeeze*:
_class0
.,loc:@shuffle_batch/AddManySparseToTensorsMap*<
_output_shapes*
(:         :         :*
	container *
dtype0	*8
shared_name)'shuffle_batch/AddManySparseToTensorsMap
^
SparseToDense/default_valueConst*
value
B	 RА*
_output_shapes
: *
dtype0	
ж
SparseToDenseSparseToDense*shuffle_batch/TakeManySparseFromTensorsMap,shuffle_batch/TakeManySparseFromTensorsMap:2,shuffle_batch/TakeManySparseFromTensorsMap:1SparseToDense/default_value*
Tindices0	*
validate_indices(*
T0	*0
_output_shapes
:                  
U
one_hot/on_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
V
one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
P
one_hot/depthConst*
value
B :Б*
dtype0*
_output_shapes
: 
│
one_hotOneHotSparseToDenseone_hot/depthone_hot/on_valueone_hot/off_value*
axis         *
TI0	*5
_output_shapes#
!:                  Б*
T0
F
RankConst*
_output_shapes
: *
dtype0*
value	B :
M
range/startConst*
dtype0*
_output_shapes
: *
value	B :
M
range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
V
rangeRangerange/startRankrange/delta*

Tidx0*
_output_shapes
:
`
concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
M
concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
q
concatConcatV2concat/values_0rangeconcat/axis*
N*

Tidx0*
T0*
_output_shapes
:
t
	transpose	Transposeone_hotconcat*
Tperm0*5
_output_shapes#
!:                  Б*
T0
Z
sequence_lengthIdentityshuffle_batch:2*
T0*#
_output_shapes
:         
R
	rnn/ShapeShape	transpose*
T0*
out_type0*
_output_shapes
:
a
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
c
rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Н
rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0*
end_mask *
new_axis_mask *

begin_mask *
ellipsis_mask 
c
rnn/strided_slice_1/stackConst*
valueB:*
_output_shapes
:*
dtype0
e
rnn/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
e
rnn/strided_slice_1/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Х
rnn/strided_slice_1StridedSlice	rnn/Shapernn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*
_output_shapes
: *
end_mask *
new_axis_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
Index0*
T0
|
:rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
─
6rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims
ExpandDimsrnn/strided_slice:rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims/dim*

Tdim0*
_output_shapes
:*
T0
|
1rnn/MultiRNNCellZeroState/LSTMCellZeroState/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
y
7rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ь
2rnn/MultiRNNCellZeroState/LSTMCellZeroState/concatConcatV26rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims1rnn/MultiRNNCellZeroState/LSTMCellZeroState/Const7rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat/axis*
_output_shapes
:*
N*
T0*

Tidx0
~
<rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
╚
8rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_1
ExpandDimsrnn/strided_slice<rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_1/dim*
T0*
_output_shapes
:*

Tdim0
~
3rnn/MultiRNNCellZeroState/LSTMCellZeroState/Const_1Const*
_output_shapes
:*
dtype0*
valueB:А
|
7rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
┘
1rnn/MultiRNNCellZeroState/LSTMCellZeroState/zerosFill2rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat7rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros/Const*(
_output_shapes
:         А*
T0
~
<rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
╚
8rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_2
ExpandDimsrnn/strided_slice<rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_2/dim*
T0*
_output_shapes
:*

Tdim0
~
3rnn/MultiRNNCellZeroState/LSTMCellZeroState/Const_2Const*
dtype0*
_output_shapes
:*
valueB:А
{
9rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
д
4rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat_1ConcatV28rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_23rnn/MultiRNNCellZeroState/LSTMCellZeroState/Const_29rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat_1/axis*
_output_shapes
:*
T0*

Tidx0*
N
~
<rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_3/dimConst*
value	B : *
_output_shapes
: *
dtype0
╚
8rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_3
ExpandDimsrnn/strided_slice<rnn/MultiRNNCellZeroState/LSTMCellZeroState/ExpandDims_3/dim*
T0*
_output_shapes
:*

Tdim0
~
3rnn/MultiRNNCellZeroState/LSTMCellZeroState/Const_3Const*
dtype0*
_output_shapes
:*
valueB:А
~
9rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
▀
3rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros_1Fill4rnn/MultiRNNCellZeroState/LSTMCellZeroState/concat_19rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros_1/Const*
T0*(
_output_shapes
:         А
~
<rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
╚
8rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims
ExpandDimsrnn/strided_slice<rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
~
3rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ConstConst*
valueB:А*
_output_shapes
:*
dtype0
{
9rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
д
4rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concatConcatV28rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims3rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/Const9rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
А
>rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
╠
:rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_1
ExpandDimsrnn/strided_slice>rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_1/dim*
_output_shapes
:*
T0*

Tdim0
А
5rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/Const_1Const*
valueB:А*
_output_shapes
:*
dtype0
~
9rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
▀
3rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zerosFill4rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat9rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros/Const*
T0*(
_output_shapes
:         А
А
>rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_2/dimConst*
dtype0*
_output_shapes
: *
value	B : 
╠
:rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_2
ExpandDimsrnn/strided_slice>rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_2/dim*
_output_shapes
:*
T0*

Tdim0
А
5rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/Const_2Const*
dtype0*
_output_shapes
:*
valueB:А
}
;rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
м
6rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat_1ConcatV2:rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_25rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/Const_2;rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat_1/axis*
_output_shapes
:*
N*
T0*

Tidx0
А
>rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
value	B : 
╠
:rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_3
ExpandDimsrnn/strided_slice>rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/ExpandDims_3/dim*
_output_shapes
:*
T0*

Tdim0
А
5rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/Const_3Const*
valueB:А*
_output_shapes
:*
dtype0
А
;rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros_1/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
х
5rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros_1Fill6rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/concat_1;rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros_1/Const*(
_output_shapes
:         А*
T0
Z
rnn/Shape_1Shapesequence_length*
out_type0*
_output_shapes
:*
T0
^
	rnn/stackPackrnn/strided_slice*

axis *
_output_shapes
:*
T0*
N
O
	rnn/EqualEqualrnn/Shape_1	rnn/stack*
_output_shapes
:*
T0
S
	rnn/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Y
rnn/AllAll	rnn/Equal	rnn/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
А
rnn/Assert/ConstConst*@
value7B5 B/Expected shape for Tensor sequence_length:0 is *
_output_shapes
: *
dtype0
c
rnn/Assert/Const_1Const*!
valueB B but saw shape: *
_output_shapes
: *
dtype0
И
rnn/Assert/Assert/data_0Const*
dtype0*
_output_shapes
: *@
value7B5 B/Expected shape for Tensor sequence_length:0 is 
i
rnn/Assert/Assert/data_2Const*
dtype0*
_output_shapes
: *!
valueB B but saw shape: 
Р
rnn/Assert/AssertAssertrnn/Allrnn/Assert/Assert/data_0	rnn/stackrnn/Assert/Assert/data_2rnn/Shape_1*
	summarize*
T
2
n
rnn/CheckSeqLenIdentitysequence_length^rnn/Assert/Assert*#
_output_shapes
:         *
T0
T
rnn/Shape_2Shape	transpose*
_output_shapes
:*
out_type0*
T0
c
rnn/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
e
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
e
rnn/strided_slice_2/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Ч
rnn/strided_slice_2StridedSlicernn/Shape_2rnn/strided_slice_2/stackrnn/strided_slice_2/stack_1rnn/strided_slice_2/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
c
rnn/strided_slice_3/stackConst*
dtype0*
_output_shapes
:*
valueB:
e
rnn/strided_slice_3/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
e
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ч
rnn/strided_slice_3StridedSlicernn/Shape_2rnn/strided_slice_3/stackrnn/strided_slice_3/stack_1rnn/strided_slice_3/stack_2*
_output_shapes
: *
end_mask *
new_axis_mask *
ellipsis_mask *

begin_mask *
shrink_axis_mask*
Index0*
T0
T
rnn/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
v
rnn/ExpandDims
ExpandDimsrnn/strided_slice_3rnn/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
V
rnn/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
Q
rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
~

rnn/concatConcatV2rnn/ExpandDimsrnn/Const_1rnn/concat/axis*
_output_shapes
:*
N*
T0*

Tidx0
T
rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
a
	rnn/zerosFill
rnn/concatrnn/zeros/Const*(
_output_shapes
:         А*
T0
U
rnn/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
j
rnn/MinMinrnn/CheckSeqLenrnn/Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
U
rnn/Const_3Const*
valueB: *
_output_shapes
:*
dtype0
j
rnn/MaxMaxrnn/CheckSeqLenrnn/Const_3*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
J
rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
╘
rnn/TensorArrayTensorArrayV3rnn/strided_slice_2*
element_shape:*/
tensor_array_namernn/dynamic_rnn/output_0*
_output_shapes

:: *
clear_after_read(*
dynamic_size( *
dtype0
╒
rnn/TensorArray_1TensorArrayV3rnn/strided_slice_2*.
tensor_array_namernn/dynamic_rnn/input_0*
dtype0*
element_shape:*
_output_shapes

:: *
clear_after_read(*
dynamic_size( 
e
rnn/TensorArrayUnstack/ShapeShape	transpose*
_output_shapes
:*
out_type0*
T0
t
*rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ь
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
d
"rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
d
"rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
─
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:         *

Tidx0
ц
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/range	transposernn/TensorArray_1:1*
T0*
_output_shapes
: *
_class
loc:@transpose
Ч
rnn/while/EnterEnterrnn/time*
is_constant( *
_output_shapes
: *$

frame_namernn/while/rnn/while/*
T0*
parallel_iterations 
в
rnn/while/Enter_1Enterrnn/TensorArray:1*
_output_shapes
: *$

frame_namernn/while/rnn/while/*
parallel_iterations *
is_constant( *
T0
╘
rnn/while/Enter_2Enter1rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *(
_output_shapes
:         А*$

frame_namernn/while/rnn/while/
╓
rnn/while/Enter_3Enter3rnn/MultiRNNCellZeroState/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *(
_output_shapes
:         А*$

frame_namernn/while/rnn/while/
╓
rnn/while/Enter_4Enter3rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros*(
_output_shapes
:         А*$

frame_namernn/while/rnn/while/*
parallel_iterations *
is_constant( *
T0
╪
rnn/while/Enter_5Enter5rnn/MultiRNNCellZeroState/LSTMCellZeroState_1/zeros_1*
is_constant( *(
_output_shapes
:         А*$

frame_namernn/while/rnn/while/*
T0*
parallel_iterations 
n
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
_output_shapes
: : *
T0*
N
t
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Ж
rnn/while/Merge_2Mergernn/while/Enter_2rnn/while/NextIteration_2**
_output_shapes
:         А: *
T0*
N
Ж
rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3*
T0*
N**
_output_shapes
:         А: 
Ж
rnn/while/Merge_4Mergernn/while/Enter_4rnn/while/NextIteration_4**
_output_shapes
:         А: *
T0*
N
Ж
rnn/while/Merge_5Mergernn/while/Enter_5rnn/while/NextIteration_5*
T0*
N**
_output_shapes
:         А: 
з
rnn/while/Less/EnterEnterrnn/strided_slice_2*
_output_shapes
: *$

frame_namernn/while/rnn/while/*
parallel_iterations *
is_constant(*
T0
^
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
_output_shapes
: *
T0
F
rnn/while/LoopCondLoopCondrnn/while/Less*
_output_shapes
: 
Ж
rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*
T0*
_output_shapes
: : *"
_class
loc:@rnn/while/Merge
М
rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_1*
_output_shapes
: : 
░
rnn/while/Switch_2Switchrnn/while/Merge_2rnn/while/LoopCond*<
_output_shapes*
(:         А:         А*$
_class
loc:@rnn/while/Merge_2*
T0
░
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*<
_output_shapes*
(:         А:         А*$
_class
loc:@rnn/while/Merge_3*
T0
░
rnn/while/Switch_4Switchrnn/while/Merge_4rnn/while/LoopCond*
T0*<
_output_shapes*
(:         А:         А*$
_class
loc:@rnn/while/Merge_4
░
rnn/while/Switch_5Switchrnn/while/Merge_5rnn/while/LoopCond*$
_class
loc:@rnn/while/Merge_5*<
_output_shapes*
(:         А:         А*
T0
S
rnn/while/IdentityIdentityrnn/while/Switch:1*
_output_shapes
: *
T0
W
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
_output_shapes
: *
T0
i
rnn/while/Identity_2Identityrnn/while/Switch_2:1*(
_output_shapes
:         А*
T0
i
rnn/while/Identity_3Identityrnn/while/Switch_3:1*
T0*(
_output_shapes
:         А
i
rnn/while/Identity_4Identityrnn/while/Switch_4:1*(
_output_shapes
:         А*
T0
i
rnn/while/Identity_5Identityrnn/while/Switch_5:1*
T0*(
_output_shapes
:         А
╢
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
_output_shapes
:*$

frame_namernn/while/rnn/while/*
parallel_iterations *
is_constant(*
T0
с
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
_output_shapes
: *$

frame_namernn/while/rnn/while/*
parallel_iterations *
is_constant(*
T0
├
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity#rnn/while/TensorArrayReadV3/Enter_1*
dtype0*(
_output_shapes
:         Б
█
Krnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB"     *
_output_shapes
:*
dtype0
═
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB
 *нъ╜
═
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB
 *нъ=*
_output_shapes
: *
dtype0
┴
Srnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformKrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0* 
_output_shapes
:
БА*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
╞
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/subSubIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: 
┌
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulMulSrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/sub*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
БА*
T0
╠
Ernn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniformAddIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*
T0* 
_output_shapes
:
БА*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
с
*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
VariableV2*
	container *
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
БА*
shape:
БА*
shared_name 
┴
1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AssignAssign*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelErnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
БА
Т
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0* 
_output_shapes
:
БА
л
Trnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/concat/axisConst^rnn/while/Identity*
_output_shapes
: *
dtype0*
value	B :
м
Ornn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/concatConcatV2rnn/while/TensorArrayReadV3rnn/while/Identity_3Trnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/concat/axis*(
_output_shapes
:         Б*
T0*

Tidx0*
N
О
Urnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read*
is_constant(* 
_output_shapes
:
БА*$

frame_namernn/while/rnn/while/*
T0*
parallel_iterations 
┌
Ornn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/MatMulMatMulOrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/concatUrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/MatMul/Enter*
transpose_b( *
T0*(
_output_shapes
:         А*
transpose_a( 
╞
:rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/ConstConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
╙
(rnn/multi_rnn_cell/cell_0/lstm_cell/bias
VariableV2*
_output_shapes	
:А*
dtype0*
shape:А*
	container *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
shared_name 
л
/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AssignAssign(rnn/multi_rnn_cell/cell_0/lstm_cell/bias:rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/Const*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
Й
-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/readIdentity(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0*
_output_shapes	
:А
И
Vrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/BiasAdd/EnterEnter-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read*
_output_shapes	
:А*$

frame_namernn/while/rnn/while/*
parallel_iterations *
is_constant(*
T0
╬
Prnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/BiasAddBiasAddOrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/MatMulVrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/BiasAdd/Enter*
data_formatNHWC*
T0*(
_output_shapes
:         А
Ы
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/ConstConst^rnn/while/Identity*
value	B :*
_output_shapes
: *
dtype0
е
Nrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split/split_dimConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
я
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/splitSplitNrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split/split_dimPrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/BiasAdd*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split*
T0
Ю
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add/yConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  А?
К
Brnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/addAddFrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split:2Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add/y*
T0*(
_output_shapes
:         А
╚
Frnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/SigmoidSigmoidBrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add*(
_output_shapes
:         А*
T0
┌
Brnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mulMulFrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Sigmoidrnn/while/Identity_2*(
_output_shapes
:         А*
T0
╠
Hrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Sigmoid_1SigmoidDrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split*
T0*(
_output_shapes
:         А
╞
Crnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/TanhTanhFrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split:1*(
_output_shapes
:         А*
T0
Н
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_1MulHrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Sigmoid_1Crnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Tanh*(
_output_shapes
:         А*
T0
И
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add_1AddBrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mulDrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_1*(
_output_shapes
:         А*
T0
╬
Hrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Sigmoid_2SigmoidFrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split:3*
T0*(
_output_shapes
:         А
╞
Ernn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Tanh_1TanhDrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add_1*(
_output_shapes
:         А*
T0
П
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_2MulHrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Sigmoid_2Ernn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Tanh_1*
T0*(
_output_shapes
:         А
█
Krnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
valueB"А     *
_output_shapes
:*
dtype0
═
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
valueB
 *bЧз╜*
dtype0*
_output_shapes
: 
═
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
valueB
 *bЧз=*
dtype0*
_output_shapes
: 
┴
Srnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformKrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/shape*

seed *
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
seed2 *
dtype0* 
_output_shapes
:
АА
╞
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/subSubIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/maxIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
┌
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/mulMulSrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/RandomUniformIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/sub*
T0* 
_output_shapes
:
АА*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
╠
Ernn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniformAddIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/mulIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel* 
_output_shapes
:
АА
с
*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
VariableV2* 
_output_shapes
:
АА*
dtype0*
shape:
АА*
	container *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
shared_name 
┴
1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AssignAssign*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelErnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel* 
_output_shapes
:
АА*
T0*
validate_shape(*
use_locking(
Т
/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel* 
_output_shapes
:
АА*
T0
л
Trnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/concat/axisConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
╒
Ornn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/concatConcatV2Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_2rnn/while/Identity_5Trnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/concat/axis*
N*

Tidx0*
T0*(
_output_shapes
:         А
О
Urnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/read* 
_output_shapes
:
АА*$

frame_namernn/while/rnn/while/*
parallel_iterations *
is_constant(*
T0
┌
Ornn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/MatMulMatMulOrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/concatUrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/MatMul/Enter*
transpose_b( *
T0*(
_output_shapes
:         А*
transpose_a( 
╞
:rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/ConstConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
╙
(rnn/multi_rnn_cell/cell_1/lstm_cell/bias
VariableV2*
	container *
dtype0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes	
:А*
shape:А*
shared_name 
л
/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/AssignAssign(rnn/multi_rnn_cell/cell_1/lstm_cell/bias:rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/Const*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
Й
-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/readIdentity(rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes	
:А*
T0
И
Vrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/BiasAdd/EnterEnter-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*$

frame_namernn/while/rnn/while/
╬
Prnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/BiasAddBiasAddOrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/MatMulVrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:         А
Ы
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/ConstConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
е
Nrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split/split_dimConst^rnn/while/Identity*
value	B :*
_output_shapes
: *
dtype0
я
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/splitSplitNrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split/split_dimPrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/BiasAdd*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split*
T0
Ю
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add/yConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  А?
К
Brnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/addAddFrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split:2Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add/y*
T0*(
_output_shapes
:         А
╚
Frnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/SigmoidSigmoidBrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add*
T0*(
_output_shapes
:         А
┌
Brnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mulMulFrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Sigmoidrnn/while/Identity_4*
T0*(
_output_shapes
:         А
╠
Hrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Sigmoid_1SigmoidDrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split*
T0*(
_output_shapes
:         А
╞
Crnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/TanhTanhFrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split:1*(
_output_shapes
:         А*
T0
Н
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_1MulHrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Sigmoid_1Crnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Tanh*(
_output_shapes
:         А*
T0
И
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add_1AddBrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mulDrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_1*
T0*(
_output_shapes
:         А
╬
Hrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Sigmoid_2SigmoidFrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split:3*
T0*(
_output_shapes
:         А
╞
Ernn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Tanh_1TanhDrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add_1*(
_output_shapes
:         А*
T0
П
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2MulHrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Sigmoid_2Ernn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Tanh_1*
T0*(
_output_shapes
:         А
╕
rnn/while/GreaterEqual/EnterEnterrnn/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *#
_output_shapes
:         *$

frame_namernn/while/rnn/while/
Ж
rnn/while/GreaterEqualGreaterEqualrnn/while/Identityrnn/while/GreaterEqual/Enter*#
_output_shapes
:         *
T0
К
rnn/while/Select/EnterEnter	rnn/zeros*
T0*
is_constant(*
parallel_iterations *(
_output_shapes
:         А*$

frame_namernn/while/rnn/while/*W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2
Ь
rnn/while/SelectSelectrnn/while/GreaterEqualrnn/while/Select/EnterDrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2*(
_output_shapes
:         А*W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2*
T0
И
rnn/while/GreaterEqual_1GreaterEqualrnn/while/Identityrnn/while/GreaterEqual/Enter*#
_output_shapes
:         *
T0
Ю
rnn/while/Select_1Selectrnn/while/GreaterEqual_1rnn/while/Identity_2Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add_1*W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add_1*(
_output_shapes
:         А*
T0
И
rnn/while/GreaterEqual_2GreaterEqualrnn/while/Identityrnn/while/GreaterEqual/Enter*
T0*#
_output_shapes
:         
Ю
rnn/while/Select_2Selectrnn/while/GreaterEqual_2rnn/while/Identity_3Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_2*
T0*W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_2*(
_output_shapes
:         А
И
rnn/while/GreaterEqual_3GreaterEqualrnn/while/Identityrnn/while/GreaterEqual/Enter*
T0*#
_output_shapes
:         
Ю
rnn/while/Select_3Selectrnn/while/GreaterEqual_3rnn/while/Identity_4Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add_1*W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add_1*(
_output_shapes
:         А*
T0
И
rnn/while/GreaterEqual_4GreaterEqualrnn/while/Identityrnn/while/GreaterEqual/Enter*
T0*#
_output_shapes
:         
Ю
rnn/while/Select_4Selectrnn/while/GreaterEqual_4rnn/while/Identity_5Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2*
T0*(
_output_shapes
:         А*W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2
Я
3rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterrnn/TensorArray*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*$

frame_namernn/while/rnn/while/*W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2
о
-rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterrnn/while/Identityrnn/while/Selectrnn/while/Identity_1*
T0*
_output_shapes
: *W
_classM
KIloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2
f
rnn/while/add/yConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Z
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
_output_shapes
: *
T0
X
rnn/while/NextIterationNextIterationrnn/while/add*
_output_shapes
: *
T0
z
rnn/while/NextIteration_1NextIteration-rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
q
rnn/while/NextIteration_2NextIterationrnn/while/Select_1*
T0*(
_output_shapes
:         А
q
rnn/while/NextIteration_3NextIterationrnn/while/Select_2*
T0*(
_output_shapes
:         А
q
rnn/while/NextIteration_4NextIterationrnn/while/Select_3*(
_output_shapes
:         А*
T0
q
rnn/while/NextIteration_5NextIterationrnn/while/Select_4*
T0*(
_output_shapes
:         А
I
rnn/while/ExitExitrnn/while/Switch*
T0*
_output_shapes
: 
M
rnn/while/Exit_1Exitrnn/while/Switch_1*
T0*
_output_shapes
: 
_
rnn/while/Exit_2Exitrnn/while/Switch_2*
T0*(
_output_shapes
:         А
_
rnn/while/Exit_3Exitrnn/while/Switch_3*(
_output_shapes
:         А*
T0
_
rnn/while/Exit_4Exitrnn/while/Switch_4*(
_output_shapes
:         А*
T0
_
rnn/while/Exit_5Exitrnn/while/Switch_5*
T0*(
_output_shapes
:         А
Ъ
&rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3rnn/TensorArrayrnn/while/Exit_1*"
_class
loc:@rnn/TensorArray*
_output_shapes
: 
Ж
 rnn/TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *
value	B : *"
_class
loc:@rnn/TensorArray
Ж
 rnn/TensorArrayStack/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*"
_class
loc:@rnn/TensorArray
ф
rnn/TensorArrayStack/rangeRange rnn/TensorArrayStack/range/start&rnn/TensorArrayStack/TensorArraySizeV3 rnn/TensorArrayStack/range/delta*"
_class
loc:@rnn/TensorArray*#
_output_shapes
:         *

Tidx0
Н
(rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3rnn/TensorArrayrnn/TensorArrayStack/rangernn/while/Exit_1*"
_class
loc:@rnn/TensorArray*%
element_shape:         А*5
_output_shapes#
!:                  А*
dtype0
V
rnn/Const_4Const*
valueB:А*
_output_shapes
:*
dtype0
J
rnn/RankConst*
_output_shapes
: *
dtype0*
value	B :
Q
rnn/range/startConst*
dtype0*
_output_shapes
: *
value	B :
Q
rnn/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
f
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*

Tidx0*
_output_shapes
:
f
rnn/concat_1/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
S
rnn/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
З
rnn/concat_1ConcatV2rnn/concat_1/values_0	rnn/rangernn/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
Я
rnn/transpose	Transpose(rnn/TensorArrayStack/TensorArrayGatherV3rnn/concat_1*
Tperm0*
T0*5
_output_shapes#
!:                  А
j
select_last_activations/ShapeShapernn/transpose*
out_type0*
_output_shapes
:*
T0
u
+select_last_activations/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
w
-select_last_activations/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
w
-select_last_activations/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ё
%select_last_activations/strided_sliceStridedSliceselect_last_activations/Shape+select_last_activations/strided_slice/stack-select_last_activations/strided_slice/stack_1-select_last_activations/strided_slice/stack_2*
end_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
_output_shapes
: *
new_axis_mask *
Index0*
T0
w
-select_last_activations/strided_slice_1/stackConst*
valueB:*
_output_shapes
:*
dtype0
y
/select_last_activations/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
y
/select_last_activations/strided_slice_1/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
∙
'select_last_activations/strided_slice_1StridedSliceselect_last_activations/Shape-select_last_activations/strided_slice_1/stack/select_last_activations/strided_slice_1/stack_1/select_last_activations/strided_slice_1/stack_2*
_output_shapes
: *
end_mask *
new_axis_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
Index0*
T0
w
-select_last_activations/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
y
/select_last_activations/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
y
/select_last_activations/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
∙
'select_last_activations/strided_slice_2StridedSliceselect_last_activations/Shape-select_last_activations/strided_slice_2/stack/select_last_activations/strided_slice_2/stack_1/select_last_activations/strided_slice_2/stack_2*
end_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
_output_shapes
: *
new_axis_mask *
Index0*
T0
r
'select_last_activations/Reshape/shape/0Const*
dtype0*
_output_shapes
: *
valueB :
         
╣
%select_last_activations/Reshape/shapePack'select_last_activations/Reshape/shape/0'select_last_activations/strided_slice_2*
T0*

axis *
N*
_output_shapes
:
й
select_last_activations/ReshapeReshapernn/transpose%select_last_activations/Reshape/shape*0
_output_shapes
:                  *
Tshape0*
T0
e
#select_last_activations/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
e
#select_last_activations/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
╚
select_last_activations/rangeRange#select_last_activations/range/start%select_last_activations/strided_slice#select_last_activations/range/delta*

Tidx0*#
_output_shapes
:         
Ш
select_last_activations/mulMulselect_last_activations/range'select_last_activations/strided_slice_1*
T0*#
_output_shapes
:         
~
select_last_activations/addAddselect_last_activations/mulshuffle_batch:2*#
_output_shapes
:         *
T0
_
select_last_activations/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
М
select_last_activations/subSubselect_last_activations/addselect_last_activations/sub/y*
T0*#
_output_shapes
:         
╟
select_last_activations/GatherGatherselect_last_activations/Reshapeselect_last_activations/sub*
Tindices0*
validate_indices(*
Tparams0*(
_output_shapes
:         А
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"А   А   *
_output_shapes
:*
dtype0
С
+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
_class
loc:@dense/kernel*
valueB
 *q─╛
С
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *q─>*
dtype0*
_output_shapes
: 
ч
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
seed2 *
T0*

seed *
dtype0*
_class
loc:@dense/kernel* 
_output_shapes
:
АА
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
т
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0* 
_output_shapes
:
АА*
_class
loc:@dense/kernel
╘
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
АА
е
dense/kernel
VariableV2*
_class
loc:@dense/kernel* 
_output_shapes
:
АА*
shape:
АА*
dtype0*
shared_name *
	container 
╔
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
АА*
_class
loc:@dense/kernel
w
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
АА
К
dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
Ч

dense/bias
VariableV2*
shared_name *
shape:А*
_output_shapes	
:А*
_class
loc:@dense/bias*
dtype0*
	container 
│
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
_output_shapes	
:А*
validate_shape(*
_class
loc:@dense/bias*
T0*
use_locking(
l
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
_output_shapes	
:А*
T0
в
dense/MatMulMatMulselect_last_activations/Gatherdense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:         А*
transpose_a( 
Б
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:         А
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"А      *
dtype0*
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
valueB
 *3&[╛
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *3&[>
ь
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
T0*
dtype0*
seed2 *

seed 
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *!
_class
loc:@dense_1/kernel
щ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes
:	А*!
_class
loc:@dense_1/kernel*
T0
█
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
T0
з
dense_1/kernel
VariableV2*
	container *
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
shape:	А*
shared_name 
╨
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	А
|
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
М
dense_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
_class
loc:@dense_1/bias*
valueB*    
Щ
dense_1/bias
VariableV2*
_output_shapes
:*
dtype0*
shape:*
	container *
_class
loc:@dense_1/bias*
shared_name 
║
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
_output_shapes
:*
validate_shape(*
_class
loc:@dense_1/bias*
T0*
use_locking(
q
dense_1/bias/readIdentitydense_1/bias*
T0*
_output_shapes
:*
_class
loc:@dense_1/bias
С
dense_2/MatMulMatMul
dense/Reludense_1/kernel/read*
transpose_b( *'
_output_shapes
:         *
transpose_a( *
T0
Ж
dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*'
_output_shapes
:         *
T0*
data_formatNHWC
q
mean_squared_error/SubSubdense_2/BiasAddshuffle_batch:1*
T0*'
_output_shapes
:         
m
mean_squared_error/SquareSquaremean_squared_error/Sub*
T0*'
_output_shapes
:         
t
/mean_squared_error/assert_broadcastable/weightsConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
x
5mean_squared_error/assert_broadcastable/weights/shapeConst*
dtype0*
_output_shapes
: *
valueB 
v
4mean_squared_error/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
Н
4mean_squared_error/assert_broadcastable/values/shapeShapemean_squared_error/Square*
T0*
out_type0*
_output_shapes
:
u
3mean_squared_error/assert_broadcastable/values/rankConst*
value	B :*
_output_shapes
: *
dtype0
K
Cmean_squared_error/assert_broadcastable/static_scalar_check_successNoOp
й
mean_squared_error/ToFloat_3/xConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
_output_shapes
: *
dtype0
К
mean_squared_error/MulMulmean_squared_error/Squaremean_squared_error/ToFloat_3/x*'
_output_shapes
:         *
T0
п
mean_squared_error/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
:*
valueB"       
Н
mean_squared_error/SumSummean_squared_error/Mulmean_squared_error/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
▒
&mean_squared_error/num_present/Equal/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ц
$mean_squared_error/num_present/EqualEqualmean_squared_error/ToFloat_3/x&mean_squared_error/num_present/Equal/y*
T0*
_output_shapes
: 
┤
)mean_squared_error/num_present/zeros_likeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
╖
.mean_squared_error/num_present/ones_like/ShapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
_output_shapes
: *
dtype0
╣
.mean_squared_error/num_present/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  А?
▒
(mean_squared_error/num_present/ones_likeFill.mean_squared_error/num_present/ones_like/Shape.mean_squared_error/num_present/ones_like/Const*
T0*
_output_shapes
: 
╦
%mean_squared_error/num_present/SelectSelect$mean_squared_error/num_present/Equal)mean_squared_error/num_present/zeros_like(mean_squared_error/num_present/ones_like*
_output_shapes
: *
T0
▄
Smean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
_output_shapes
: *
dtype0
┌
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
ё
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shapeShapemean_squared_error/SquareD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
┘
Qmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
п
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpD^mean_squared_error/assert_broadcastable/static_scalar_check_success
├
@mean_squared_error/num_present/broadcast_weights/ones_like/ShapeShapemean_squared_error/SquareD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
out_type0*
T0
п
@mean_squared_error/num_present/broadcast_weights/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  А?
°
:mean_squared_error/num_present/broadcast_weights/ones_likeFill@mean_squared_error/num_present/broadcast_weights/ones_like/Shape@mean_squared_error/num_present/broadcast_weights/ones_like/Const*'
_output_shapes
:         *
T0
╠
0mean_squared_error/num_present/broadcast_weightsMul%mean_squared_error/num_present/Select:mean_squared_error/num_present/broadcast_weights/ones_like*'
_output_shapes
:         *
T0
╗
$mean_squared_error/num_present/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
:*
valueB"       
╗
mean_squared_error/num_presentSum0mean_squared_error/num_present/broadcast_weights$mean_squared_error/num_present/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
г
mean_squared_error/Const_1ConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
_output_shapes
: *
dtype0
С
mean_squared_error/Sum_1Summean_squared_error/Summean_squared_error/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
з
mean_squared_error/Greater/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
_output_shapes
: *
dtype0
Д
mean_squared_error/GreaterGreatermean_squared_error/num_presentmean_squared_error/Greater/y*
_output_shapes
: *
T0
е
mean_squared_error/Equal/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
_output_shapes
: *
dtype0
~
mean_squared_error/EqualEqualmean_squared_error/num_presentmean_squared_error/Equal/y*
T0*
_output_shapes
: 
л
"mean_squared_error/ones_like/ShapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB 
н
"mean_squared_error/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  А?
Н
mean_squared_error/ones_likeFill"mean_squared_error/ones_like/Shape"mean_squared_error/ones_like/Const*
_output_shapes
: *
T0
Ь
mean_squared_error/SelectSelectmean_squared_error/Equalmean_squared_error/ones_likemean_squared_error/num_present*
_output_shapes
: *
T0
w
mean_squared_error/divRealDivmean_squared_error/Sum_1mean_squared_error/Select*
T0*
_output_shapes
: 
и
mean_squared_error/zeros_likeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
Ц
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/divmean_squared_error/zeros_like*
T0*
_output_shapes
: 
O

mean/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0
n

mean/total
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
Ь
mean/total/AssignAssign
mean/total
mean/zeros*
_class
loc:@mean/total*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
g
mean/total/readIdentity
mean/total*
_class
loc:@mean/total*
_output_shapes
: *
T0
Q
mean/zeros_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
n

mean/count
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
Ю
mean/count/AssignAssign
mean/countmean/zeros_1*
use_locking(*
T0*
_class
loc:@mean/count*
validate_shape(*
_output_shapes
: 
g
mean/count/readIdentity
mean/count*
_class
loc:@mean/count*
_output_shapes
: *
T0
K
	mean/SizeConst*
_output_shapes
: *
dtype0*
value	B :
Q
mean/ToFloat_1Cast	mean/Size*

SrcT0*
_output_shapes
: *

DstT0
M

mean/ConstConst*
dtype0*
_output_shapes
: *
valueB 
s
mean/SumSummean_squared_error/value
mean/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Д
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
_class
loc:@mean/total*
_output_shapes
: *
T0*
use_locking( 
з
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1^mean_squared_error/value*
use_locking( *
T0*
_output_shapes
: *
_class
loc:@mean/count
S
mean/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
Y
mean/GreaterGreatermean/count/readmean/Greater/y*
T0*
_output_shapes
: 
Z
mean/truedivRealDivmean/total/readmean/count/read*
T0*
_output_shapes
: 
Q
mean/value/eConst*
dtype0*
_output_shapes
: *
valueB
 *    
_

mean/valueSelectmean/Greatermean/truedivmean/value/e*
_output_shapes
: *
T0
U
mean/Greater_1/yConst*
valueB
 *    *
_output_shapes
: *
dtype0
^
mean/Greater_1Greatermean/AssignAdd_1mean/Greater_1/y*
T0*
_output_shapes
: 
\
mean/truediv_1RealDivmean/AssignAddmean/AssignAdd_1*
T0*
_output_shapes
: 
U
mean/update_op/eConst*
dtype0*
_output_shapes
: *
valueB
 *    
k
mean/update_opSelectmean/Greater_1mean/truediv_1mean/update_op/e*
T0*
_output_shapes
: 
#

group_depsNoOp^mean/update_op
{
eval_step/Initializer/zerosConst*
_class
loc:@eval_step*
value	B	 R *
_output_shapes
: *
dtype0	
Л
	eval_step
VariableV2*
shared_name *
_class
loc:@eval_step*
	container *
shape: *
dtype0	*
_output_shapes
: 
к
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
_class
loc:@eval_step*
_output_shapes
: *
T0	*
validate_shape(*
use_locking(
d
eval_step/readIdentity	eval_step*
T0	*
_class
loc:@eval_step*
_output_shapes
: 
Q
AssignAdd/valueConst*
value	B	 R*
_output_shapes
: *
dtype0	
Д
	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
_output_shapes
: *
_class
loc:@eval_step*
T0	*
use_locking( 
┼
initNoOp^global_step/Assign2^rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Assign0^rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Assign2^rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Assign0^rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Assign^dense/kernel/Assign^dense/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1
Я
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
_output_shapes
: *
dtype0	*
_class
loc:@global_step
▀
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitialized*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0*
_output_shapes
: 
█
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitialized(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
: *
dtype0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias
▀
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitialized*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
dtype0*
_output_shapes
: 
█
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitialized(rnn/multi_rnn_cell/cell_1/lstm_cell/bias*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes
: *
dtype0
г
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializeddense/kernel*
dtype0*
_output_shapes
: *
_class
loc:@dense/kernel
Я
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitialized
dense/bias*
_output_shapes
: *
dtype0*
_class
loc:@dense/bias
з
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
г
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
_output_shapes
: *
dtype0
Я
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitialized
mean/total*
dtype0*
_output_shapes
: *
_class
loc:@mean/total
а
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitialized
mean/count*
_class
loc:@mean/count*
_output_shapes
: *
dtype0
Ю
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitialized	eval_step*
dtype0	*
_output_shapes
: *
_class
loc:@eval_step
Ж
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_11*
T0
*

axis *
N*
_output_shapes
:
y
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack*
_output_shapes
:
В
$report_uninitialized_variables/ConstConst*й
valueЯBЬBglobal_stepB*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB(rnn/multi_rnn_cell/cell_0/lstm_cell/biasB*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelB(rnn/multi_rnn_cell/cell_1/lstm_cell/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasB
mean/totalB
mean/countB	eval_step*
dtype0*
_output_shapes
:
{
1report_uninitialized_variables/boolean_mask/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
Й
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Л
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Л
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
┘
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2*
ellipsis_mask *

begin_mask*
_output_shapes
:*
end_mask *
Index0*
T0*
shrink_axis_mask *
new_axis_mask 
М
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0
ї
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
}
3report_uninitialized_variables/boolean_mask/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Л
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst*
valueB:*
_output_shapes
:*
dtype0
Н
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
Н
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
с
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *

begin_mask *
shrink_axis_mask *
_output_shapes
: *
new_axis_mask *
Index0*
T0
п
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod*
T0*

axis *
N*
_output_shapes
:
y
7report_uninitialized_variables/boolean_mask/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
л
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
╦
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat*
T0*
Tshape0*
_output_shapes
:
О
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst*
valueB:
         *
_output_shapes
:*
dtype0
█
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape*
Tshape0*
_output_shapes
:*
T0

Ъ
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1*'
_output_shapes
:         
╢
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where*
squeeze_dims
*
T0	*#
_output_shapes
:         
В
2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze*#
_output_shapes
:         *
validate_indices(*
Tparams0*
Tindices0	
g
$report_uninitialized_resources/ConstConst*
dtype0*
_output_shapes
: *
valueB 
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
└
concat_1ConcatV22report_uninitialized_variables/boolean_mask/Gather$report_uninitialized_resources/Constconcat_1/axis*#
_output_shapes
:         *
N*
T0*

Tidx0
б
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
с
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitialized*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: *
dtype0
▌
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitialized(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0*
_output_shapes
: 
с
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitialized*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: *
dtype0
▌
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitialized(rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes
: *
dtype0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
е
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializeddense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
б
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitialized
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
й
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
е
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
Ё
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_8*
_output_shapes
:	*
N	*

axis *
T0

}
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack*
_output_shapes
:	
с
&report_uninitialized_variables_1/ConstConst*Ж
value№B∙	Bglobal_stepB*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB(rnn/multi_rnn_cell/cell_0/lstm_cell/biasB*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelB(rnn/multi_rnn_cell/cell_1/lstm_cell/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/bias*
dtype0*
_output_shapes
:	
}
3report_uninitialized_variables_1/boolean_mask/ShapeConst*
_output_shapes
:*
dtype0*
valueB:	
Л
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Н
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
у
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2*
end_mask *
ellipsis_mask *

begin_mask*
shrink_axis_mask *
_output_shapes
:*
new_axis_mask *
Index0*
T0
О
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
√
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

5report_uninitialized_variables_1/boolean_mask/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:	
Н
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
П
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
П
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ы
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2*
_output_shapes
: *
end_mask*
new_axis_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask *
Index0*
T0
│
=report_uninitialized_variables_1/boolean_mask/concat/values_0Pack2report_uninitialized_variables_1/boolean_mask/Prod*
_output_shapes
:*
N*

axis *
T0
{
9report_uninitialized_variables_1/boolean_mask/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
│
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/concat/values_0=report_uninitialized_variables_1/boolean_mask/strided_slice_19report_uninitialized_variables_1/boolean_mask/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
╤
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat*
T0*
_output_shapes
:	*
Tshape0
Р
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         
с
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape*
T0
*
_output_shapes
:	*
Tshape0
Ю
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1*'
_output_shapes
:         
║
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where*
squeeze_dims
*
T0	*#
_output_shapes
:         
И
4report_uninitialized_variables_1/boolean_mask/GatherGather5report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze*#
_output_shapes
:         *
validate_indices(*
Tparams0*
Tindices0	
I
init_2NoOp^mean/total/Assign^mean/count/Assign^eval_step/Assign
?
init_all_tablesNoOp&^string_to_index/hash_table/table_init
/
group_deps_2NoOp^init_2^init_all_tables
┼
Merge/MergeSummaryMergeSummarySenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_256_of_768_full+shuffle_batch/fraction_over_100_of_900_full*
_output_shapes
: *
N
P

save/ConstConst*
_output_shapes
: *
dtype0*
valueB Bmodel
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_6a1fe2facd3e46ff966205dad620aeb4/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
\
save/ShardedFilename/shardConst*
value	B : *
_output_shapes
: *
dtype0
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
╙
save/SaveV2/tensor_namesConst*
_output_shapes
:	*
dtype0*Ж
value№B∙	B
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_stepB(rnn/multi_rnn_cell/cell_0/lstm_cell/biasB*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB(rnn/multi_rnn_cell/cell_1/lstm_cell/biasB*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
u
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:	*%
valueB	B B B B B B B B B 
э
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices
dense/biasdense/kerneldense_1/biasdense_1/kernelglobal_step(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel(rnn/multi_rnn_cell/cell_1/lstm_cell/bias*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
dtypes
2		
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*
N*

axis *
T0
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
_output_shapes
: *
T0
n
save/RestoreV2/tensor_namesConst*
valueBB
dense/bias*
_output_shapes
:*
dtype0
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Я
save/AssignAssign
dense/biassave/RestoreV2*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*
_class
loc:@dense/bias
r
save/RestoreV2_1/tensor_namesConst*!
valueBBdense/kernel*
_output_shapes
:*
dtype0
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
м
save/Assign_1Assigndense/kernelsave/RestoreV2_1*
_class
loc:@dense/kernel* 
_output_shapes
:
АА*
T0*
validate_shape(*
use_locking(
r
save/RestoreV2_2/tensor_namesConst*!
valueBBdense_1/bias*
dtype0*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save/Assign_2Assigndense_1/biassave/RestoreV2_2*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*
_class
loc:@dense_1/bias
t
save/RestoreV2_3/tensor_namesConst*
dtype0*
_output_shapes
:*#
valueBBdense_1/kernel
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
п
save/Assign_3Assigndense_1/kernelsave/RestoreV2_3*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	А
q
save/RestoreV2_4/tensor_namesConst* 
valueBBglobal_step*
_output_shapes
:*
dtype0
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ц
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2	
а
save/Assign_4Assignglobal_stepsave/RestoreV2_4*
_class
loc:@global_step*
_output_shapes
: *
T0	*
validate_shape(*
use_locking(
О
save/RestoreV2_5/tensor_namesConst*=
value4B2B(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ц
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
▀
save/Assign_5Assign(rnn/multi_rnn_cell/cell_0/lstm_cell/biassave/RestoreV2_5*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
Р
save/RestoreV2_6/tensor_namesConst*
dtype0*
_output_shapes
:*?
value6B4B*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
j
!save/RestoreV2_6/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ц
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
ш
save/Assign_6Assign*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelsave/RestoreV2_6*
use_locking(*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
БА
О
save/RestoreV2_7/tensor_namesConst*
_output_shapes
:*
dtype0*=
value4B2B(rnn/multi_rnn_cell/cell_1/lstm_cell/bias
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
▀
save/Assign_7Assign(rnn/multi_rnn_cell/cell_1/lstm_cell/biassave/RestoreV2_7*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
Р
save/RestoreV2_8/tensor_namesConst*?
value6B4B*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
:*
dtype0
j
!save/RestoreV2_8/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
ш
save/Assign_8Assign*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelsave/RestoreV2_8*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel* 
_output_shapes
:
АА*
T0*
validate_shape(*
use_locking(
и
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard""К
	variables№∙
7
global_step:0global_step/Assignglobal_step/read:0
Ф
,rnn/multi_rnn_cell/cell_0/lstm_cell/kernel:01rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Assign1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read:0
О
*rnn/multi_rnn_cell/cell_0/lstm_cell/bias:0/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Assign/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read:0
Ф
,rnn/multi_rnn_cell/cell_1/lstm_cell/kernel:01rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Assign1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/read:0
О
*rnn/multi_rnn_cell/cell_1/lstm_cell/bias:0/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Assign/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/read:0
:
dense/kernel:0dense/kernel/Assigndense/kernel/read:0
4
dense/bias:0dense/bias/Assigndense/bias/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
:
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:0"&

summary_op

Merge/MergeSummary:0">
table_initializer)
'
%string_to_index/hash_table/table_init"
ready_op


concat_1:0"╘5
while_context┬5┐5
╝5
rnn/while/rnn/while/ *rnn/while/LoopCond:02rnn/while/Merge:0:rnn/while/Identity:0Brnn/while/Exit:0Brnn/while/Exit_1:0Brnn/while/Exit_2:0Brnn/while/Exit_3:0Brnn/while/Exit_4:0Brnn/while/Exit_5:0Jю2
rnn/CheckSeqLen:0
rnn/TensorArray:0
@rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
rnn/TensorArray_1:0
/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read:0
1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read:0
/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/read:0
1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/read:0
rnn/strided_slice_2:0
rnn/while/Enter:0
rnn/while/Enter_1:0
rnn/while/Enter_2:0
rnn/while/Enter_3:0
rnn/while/Enter_4:0
rnn/while/Enter_5:0
rnn/while/Exit:0
rnn/while/Exit_1:0
rnn/while/Exit_2:0
rnn/while/Exit_3:0
rnn/while/Exit_4:0
rnn/while/Exit_5:0
rnn/while/GreaterEqual/Enter:0
rnn/while/GreaterEqual:0
rnn/while/GreaterEqual_1:0
rnn/while/GreaterEqual_2:0
rnn/while/GreaterEqual_3:0
rnn/while/GreaterEqual_4:0
rnn/while/Identity:0
rnn/while/Identity_1:0
rnn/while/Identity_2:0
rnn/while/Identity_3:0
rnn/while/Identity_4:0
rnn/while/Identity_5:0
rnn/while/Less/Enter:0
rnn/while/Less:0
rnn/while/LoopCond:0
rnn/while/Merge:0
rnn/while/Merge:1
rnn/while/Merge_1:0
rnn/while/Merge_1:1
rnn/while/Merge_2:0
rnn/while/Merge_2:1
rnn/while/Merge_3:0
rnn/while/Merge_3:1
rnn/while/Merge_4:0
rnn/while/Merge_4:1
rnn/while/Merge_5:0
rnn/while/Merge_5:1
rnn/while/NextIteration:0
rnn/while/NextIteration_1:0
rnn/while/NextIteration_2:0
rnn/while/NextIteration_3:0
rnn/while/NextIteration_4:0
rnn/while/NextIteration_5:0
rnn/while/Select/Enter:0
rnn/while/Select:0
rnn/while/Select_1:0
rnn/while/Select_2:0
rnn/while/Select_3:0
rnn/while/Select_4:0
rnn/while/Switch:0
rnn/while/Switch:1
rnn/while/Switch_1:0
rnn/while/Switch_1:1
rnn/while/Switch_2:0
rnn/while/Switch_2:1
rnn/while/Switch_3:0
rnn/while/Switch_3:1
rnn/while/Switch_4:0
rnn/while/Switch_4:1
rnn/while/Switch_5:0
rnn/while/Switch_5:1
#rnn/while/TensorArrayReadV3/Enter:0
%rnn/while/TensorArrayReadV3/Enter_1:0
rnn/while/TensorArrayReadV3:0
5rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
rnn/while/add/y:0
rnn/while/add:0
Frnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Const:0
Hrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Sigmoid:0
Jrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Sigmoid_1:0
Jrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Sigmoid_2:0
Ernn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Tanh:0
Grnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/Tanh_1:0
Frnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add/y:0
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add:0
Frnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/add_1:0
Xrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/BiasAdd/Enter:0
Rrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/BiasAdd:0
Wrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/MatMul/Enter:0
Qrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/MatMul:0
Vrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/concat/axis:0
Qrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/concat:0
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul:0
Frnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_1:0
Frnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/mul_2:0
Prnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split/split_dim:0
Frnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split:0
Frnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split:1
Frnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split:2
Frnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/split:3
Frnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Const:0
Hrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Sigmoid:0
Jrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Sigmoid_1:0
Jrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Sigmoid_2:0
Ernn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Tanh:0
Grnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/Tanh_1:0
Frnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add/y:0
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add:0
Frnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/add_1:0
Xrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/BiasAdd/Enter:0
Rrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/BiasAdd:0
Wrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/MatMul/Enter:0
Qrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/MatMul:0
Vrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/concat/axis:0
Qrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/concat:0
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul:0
Frnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_1:0
Frnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/mul_2:0
Prnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split/split_dim:0
Frnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split:0
Frnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split:1
Frnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split:2
Frnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/split:3
rnn/zeros:0М
1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read:0Wrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/MatMul/Enter:0:
rnn/TensorArray_1:0#rnn/while/TensorArrayReadV3/Enter:0Л
/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read:0Xrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/lstm_cell/lstm_cell/BiasAdd/Enter:03
rnn/CheckSeqLen:0rnn/while/GreaterEqual/Enter:0'
rnn/zeros:0rnn/while/Select/Enter:0Л
/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/read:0Xrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/BiasAdd/Enter:0i
@rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0%rnn/while/TensorArrayReadV3/Enter_1:0J
rnn/TensorArray:05rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0/
rnn/strided_slice_2:0rnn/while/Less/Enter:0М
1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/read:0Wrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/lstm_cell/lstm_cell/MatMul/Enter:0Rrnn/while/Enter:0Rrnn/while/Enter_1:0Rrnn/while/Enter_2:0Rrnn/while/Enter_3:0Rrnn/while/Enter_4:0Rrnn/while/Enter_5:0" 
global_step

global_step:0">
local_variables+
)
mean/total:0
mean/count:0
eval_step:0"J
savers@>
<
save/Const:0save/Identity:0save/restore_all (5 @F8"
init_op

group_deps_1"U
ready_for_local_init_op:
8
6report_uninitialized_variables_1/boolean_mask/Gather:0"!
local_init_op

group_deps_2"
	eval_step

eval_step:0"█
trainable_variables├└
Ф
,rnn/multi_rnn_cell/cell_0/lstm_cell/kernel:01rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Assign1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read:0
О
*rnn/multi_rnn_cell/cell_0/lstm_cell/bias:0/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Assign/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read:0
Ф
,rnn/multi_rnn_cell/cell_1/lstm_cell/kernel:01rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Assign1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/read:0
О
*rnn/multi_rnn_cell/cell_1/lstm_cell/bias:0/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Assign/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/read:0
:
dense/kernel:0dense/kernel/Assigndense/kernel/read:0
4
dense/bias:0dense/bias/Assigndense/bias/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
:
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:0"Ч
	summariesЙ
Ж
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_256_of_768_full:0
-shuffle_batch/fraction_over_100_of_900_full:0"(
losses

mean_squared_error/value:0"Ь
queue_runnersКЗ
─
"enqueue_input/random_shuffle_queue.enqueue_input/random_shuffle_queue_EnqueueMany0enqueue_input/random_shuffle_queue_EnqueueMany_10enqueue_input/random_shuffle_queue_EnqueueMany_20enqueue_input/random_shuffle_queue_EnqueueMany_3(enqueue_input/random_shuffle_queue_Close"*enqueue_input/random_shuffle_queue_Close_1*
╜
"shuffle_batch/random_shuffle_queue.shuffle_batch/random_shuffle_queue_EnqueueMany.shuffle_batch/random_shuffle_queue_EnqueueMany.shuffle_batch/random_shuffle_queue_EnqueueMany.shuffle_batch/random_shuffle_queue_EnqueueMany(shuffle_batch/random_shuffle_queue_Close"*shuffle_batch/random_shuffle_queue_Close_1*╢ОD       Ы╪-	К<H╖RR╓A*

loss>->О╖Ш/       Ю	b─=MSR╓Aш1*

lossbC?=g│Щ       Ю	┐-MгSR╓AРN*

loss╧p?=═OвU       Ю	╗,╢dR╓AгN*

lossRЙ<╚▀d┴