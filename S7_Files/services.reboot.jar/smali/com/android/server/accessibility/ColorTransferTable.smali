.class public Lcom/android/server/accessibility/ColorTransferTable;
.super Ljava/lang/Object;
.source "ColorTransferTable.java"


# static fields
.field public static final BLUE:I = 0x5

.field public static final CYAN:I = 0x4

.field private static final DEUTAN:I = 0x1

.field public static final GREEN:I = 0x3

.field public static final MAGENTA:I = 0x6

.field private static final MAX:I = 0x0

.field private static final MAX_MIN_COLOR_TRANSFER_NUM:I = 0x2

.field private static final MIN:I = 0x1

.field private static final PROTAN:I = 0x0

.field public static final RED:I = 0x1

.field private static final TRITAN:I = 0x2

.field public static final YELLOW:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMaxMinColorTrnasferValue_BB_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3141
    const/4 v3, 0x0

    .line 3142
    .local v3, "min":I
    const/4 v1, 0x0

    .line 3144
    .local v1, "max":I
    const/4 v0, 0x0

    .line 3146
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 3149
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 3152
    if-nez p1, :cond_0

    .line 3154
    packed-switch v0, :pswitch_data_0

    .line 3306
    :goto_0
    aput v1, v2, v4

    .line 3307
    aput v3, v2, v5

    .line 3309
    return-object v2

    .line 3156
    :pswitch_0
    const/16 v3, 0xff

    .line 3157
    const/16 v1, 0xff

    .line 3158
    goto :goto_0

    .line 3160
    :pswitch_1
    const/16 v3, 0xfe

    .line 3161
    const/16 v1, 0xfe

    .line 3162
    goto :goto_0

    .line 3164
    :pswitch_2
    const/16 v3, 0xfe

    .line 3165
    const/16 v1, 0xfe

    .line 3166
    goto :goto_0

    .line 3168
    :pswitch_3
    const/16 v3, 0xfe

    .line 3169
    const/16 v1, 0xfe

    .line 3170
    goto :goto_0

    .line 3172
    :pswitch_4
    const/16 v3, 0xfe

    .line 3173
    const/16 v1, 0xfe

    .line 3174
    goto :goto_0

    .line 3176
    :pswitch_5
    const/16 v3, 0xfe

    .line 3177
    const/16 v1, 0xfe

    .line 3178
    goto :goto_0

    .line 3180
    :pswitch_6
    const/16 v3, 0xfe

    .line 3181
    const/16 v1, 0xfe

    .line 3182
    goto :goto_0

    .line 3184
    :pswitch_7
    const/16 v3, 0xfe

    .line 3185
    const/16 v1, 0xfe

    .line 3186
    goto :goto_0

    .line 3188
    :pswitch_8
    const/16 v3, 0xfe

    .line 3189
    const/16 v1, 0xfe

    .line 3190
    goto :goto_0

    .line 3192
    :pswitch_9
    const/16 v3, 0xfe

    .line 3193
    const/16 v1, 0xfe

    .line 3194
    goto :goto_0

    .line 3196
    :pswitch_a
    const/16 v3, 0xfe

    .line 3197
    const/16 v1, 0xfe

    .line 3198
    goto :goto_0

    .line 3202
    :cond_0
    if-ne p1, v5, :cond_1

    .line 3204
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3206
    :pswitch_b
    const/16 v3, 0xff

    .line 3207
    const/16 v1, 0xff

    .line 3208
    goto :goto_0

    .line 3210
    :pswitch_c
    const/16 v3, 0xfe

    .line 3211
    const/16 v1, 0xfe

    .line 3212
    goto :goto_0

    .line 3214
    :pswitch_d
    const/16 v3, 0xfe

    .line 3215
    const/16 v1, 0xfe

    .line 3216
    goto :goto_0

    .line 3218
    :pswitch_e
    const/16 v3, 0xfe

    .line 3219
    const/16 v1, 0xfe

    .line 3220
    goto :goto_0

    .line 3222
    :pswitch_f
    const/16 v3, 0xfe

    .line 3223
    const/16 v1, 0xfe

    .line 3224
    goto :goto_0

    .line 3226
    :pswitch_10
    const/16 v3, 0xfe

    .line 3227
    const/16 v1, 0xfe

    .line 3228
    goto :goto_0

    .line 3230
    :pswitch_11
    const/16 v3, 0xfe

    .line 3231
    const/16 v1, 0xfe

    .line 3232
    goto :goto_0

    .line 3234
    :pswitch_12
    const/16 v3, 0xfe

    .line 3235
    const/16 v1, 0xfe

    .line 3236
    goto :goto_0

    .line 3238
    :pswitch_13
    const/16 v3, 0xfe

    .line 3239
    const/16 v1, 0xfe

    .line 3240
    goto :goto_0

    .line 3242
    :pswitch_14
    const/16 v3, 0xfe

    .line 3243
    const/16 v1, 0xfe

    .line 3244
    goto :goto_0

    .line 3246
    :pswitch_15
    const/16 v3, 0xfe

    .line 3247
    const/16 v1, 0xfe

    .line 3248
    goto :goto_0

    .line 3252
    :cond_1
    if-ne p1, v6, :cond_2

    .line 3254
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 3256
    :pswitch_16
    const/16 v3, 0xff

    .line 3257
    const/16 v1, 0xff

    .line 3258
    goto/16 :goto_0

    .line 3260
    :pswitch_17
    const/16 v3, 0xff

    .line 3261
    const/16 v1, 0xff

    .line 3262
    goto/16 :goto_0

    .line 3264
    :pswitch_18
    const/16 v3, 0xff

    .line 3265
    const/16 v1, 0xff

    .line 3266
    goto/16 :goto_0

    .line 3268
    :pswitch_19
    const/16 v3, 0xff

    .line 3269
    const/16 v1, 0xff

    .line 3270
    goto/16 :goto_0

    .line 3272
    :pswitch_1a
    const/16 v3, 0xff

    .line 3273
    const/16 v1, 0xff

    .line 3274
    goto/16 :goto_0

    .line 3276
    :pswitch_1b
    const/16 v3, 0xff

    .line 3277
    const/16 v1, 0xff

    .line 3278
    goto/16 :goto_0

    .line 3280
    :pswitch_1c
    const/16 v3, 0xff

    .line 3281
    const/16 v1, 0xff

    .line 3282
    goto/16 :goto_0

    .line 3284
    :pswitch_1d
    const/16 v3, 0xff

    .line 3285
    const/16 v1, 0xff

    .line 3286
    goto/16 :goto_0

    .line 3288
    :pswitch_1e
    const/16 v3, 0xff

    .line 3289
    const/16 v1, 0xff

    .line 3290
    goto/16 :goto_0

    .line 3292
    :pswitch_1f
    const/16 v3, 0xff

    .line 3293
    const/16 v1, 0xff

    .line 3294
    goto/16 :goto_0

    .line 3296
    :pswitch_20
    const/16 v3, 0xff

    .line 3297
    const/16 v1, 0xff

    .line 3298
    goto/16 :goto_0

    .line 3302
    :cond_2
    const/4 v3, -0x1

    .line 3303
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 3154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 3204
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 3254
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6371
    const/4 v3, 0x0

    .line 6372
    .local v3, "min":I
    const/4 v1, 0x0

    .line 6374
    .local v1, "max":I
    const/4 v0, 0x0

    .line 6376
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 6379
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 6382
    if-nez p1, :cond_0

    .line 6384
    packed-switch v0, :pswitch_data_0

    .line 6536
    :goto_0
    aput v1, v2, v4

    .line 6537
    aput v3, v2, v5

    .line 6539
    return-object v2

    .line 6386
    :pswitch_0
    const/16 v3, 0xff

    .line 6387
    const/16 v1, 0xff

    .line 6388
    goto :goto_0

    .line 6390
    :pswitch_1
    const/16 v3, 0xcc

    .line 6391
    const/16 v1, 0xcb

    .line 6392
    goto :goto_0

    .line 6394
    :pswitch_2
    const/16 v3, 0xcc

    .line 6395
    const/16 v1, 0xca

    .line 6396
    goto :goto_0

    .line 6398
    :pswitch_3
    const/16 v3, 0xcc

    .line 6399
    const/16 v1, 0xca

    .line 6400
    goto :goto_0

    .line 6402
    :pswitch_4
    const/16 v3, 0xcc

    .line 6403
    const/16 v1, 0xc9

    .line 6404
    goto :goto_0

    .line 6406
    :pswitch_5
    const/16 v3, 0xcc

    .line 6407
    const/16 v1, 0xc9

    .line 6408
    goto :goto_0

    .line 6410
    :pswitch_6
    const/16 v3, 0xfe

    .line 6411
    const/16 v1, 0xfe

    .line 6412
    goto :goto_0

    .line 6414
    :pswitch_7
    const/16 v3, 0xfe

    .line 6415
    const/16 v1, 0xfe

    .line 6416
    goto :goto_0

    .line 6418
    :pswitch_8
    const/16 v3, 0xfe

    .line 6419
    const/16 v1, 0xfe

    .line 6420
    goto :goto_0

    .line 6422
    :pswitch_9
    const/16 v3, 0xfe

    .line 6423
    const/16 v1, 0xfe

    .line 6424
    goto :goto_0

    .line 6426
    :pswitch_a
    const/16 v3, 0xfe

    .line 6427
    const/16 v1, 0xfe

    .line 6428
    goto :goto_0

    .line 6432
    :cond_0
    if-ne p1, v5, :cond_1

    .line 6434
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 6436
    :pswitch_b
    const/16 v3, 0xff

    .line 6437
    const/16 v1, 0xff

    .line 6438
    goto :goto_0

    .line 6440
    :pswitch_c
    const/16 v3, 0xcc

    .line 6441
    const/16 v1, 0xcc

    .line 6442
    goto :goto_0

    .line 6444
    :pswitch_d
    const/16 v3, 0xcc

    .line 6445
    const/16 v1, 0xcd

    .line 6446
    goto :goto_0

    .line 6448
    :pswitch_e
    const/16 v3, 0xcc

    .line 6449
    const/16 v1, 0xcd

    .line 6450
    goto :goto_0

    .line 6452
    :pswitch_f
    const/16 v3, 0xcc

    .line 6453
    const/16 v1, 0xce

    .line 6454
    goto :goto_0

    .line 6456
    :pswitch_10
    const/16 v3, 0xcc

    .line 6457
    const/16 v1, 0xce

    .line 6458
    goto :goto_0

    .line 6460
    :pswitch_11
    const/16 v3, 0xfe

    .line 6461
    const/16 v1, 0xfe

    .line 6462
    goto :goto_0

    .line 6464
    :pswitch_12
    const/16 v3, 0xfe

    .line 6465
    const/16 v1, 0xfe

    .line 6466
    goto :goto_0

    .line 6468
    :pswitch_13
    const/16 v3, 0xfe

    .line 6469
    const/16 v1, 0xfe

    .line 6470
    goto :goto_0

    .line 6472
    :pswitch_14
    const/16 v3, 0xfe

    .line 6473
    const/16 v1, 0xfe

    .line 6474
    goto :goto_0

    .line 6476
    :pswitch_15
    const/16 v3, 0xfe

    .line 6477
    const/16 v1, 0xfe

    .line 6478
    goto :goto_0

    .line 6482
    :cond_1
    if-ne p1, v6, :cond_2

    .line 6484
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 6486
    :pswitch_16
    const/16 v3, 0xff

    .line 6487
    const/16 v1, 0xff

    .line 6488
    goto/16 :goto_0

    .line 6490
    :pswitch_17
    const/16 v3, 0xcc

    .line 6491
    const/16 v1, 0xda

    .line 6492
    goto/16 :goto_0

    .line 6494
    :pswitch_18
    const/16 v3, 0xcc

    .line 6495
    const/16 v1, 0xe1

    .line 6496
    goto/16 :goto_0

    .line 6498
    :pswitch_19
    const/16 v3, 0xcc

    .line 6499
    const/16 v1, 0xe7

    .line 6500
    goto/16 :goto_0

    .line 6502
    :pswitch_1a
    const/16 v3, 0xcc

    .line 6503
    const/16 v1, 0xed

    .line 6504
    goto/16 :goto_0

    .line 6506
    :pswitch_1b
    const/16 v3, 0xcc

    .line 6507
    const/16 v1, 0xf4

    .line 6508
    goto/16 :goto_0

    .line 6510
    :pswitch_1c
    const/16 v3, 0xff

    .line 6511
    const/16 v1, 0xff

    .line 6512
    goto/16 :goto_0

    .line 6514
    :pswitch_1d
    const/16 v3, 0xff

    .line 6515
    const/16 v1, 0xff

    .line 6516
    goto/16 :goto_0

    .line 6518
    :pswitch_1e
    const/16 v3, 0xff

    .line 6519
    const/16 v1, 0xff

    .line 6520
    goto/16 :goto_0

    .line 6522
    :pswitch_1f
    const/16 v3, 0xff

    .line 6523
    const/16 v1, 0xff

    .line 6524
    goto/16 :goto_0

    .line 6526
    :pswitch_20
    const/16 v3, 0xff

    .line 6527
    const/16 v1, 0xff

    .line 6528
    goto/16 :goto_0

    .line 6532
    :cond_2
    const/4 v3, -0x1

    .line 6533
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 6384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 6434
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 6484
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BG_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2969
    const/4 v3, 0x0

    .line 2970
    .local v3, "min":I
    const/4 v1, 0x0

    .line 2972
    .local v1, "max":I
    const/4 v0, 0x0

    .line 2974
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 2977
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 2980
    if-nez p1, :cond_0

    .line 2982
    packed-switch v0, :pswitch_data_0

    .line 3134
    :goto_0
    aput v1, v2, v4

    .line 3135
    aput v3, v2, v5

    .line 3137
    return-object v2

    .line 2984
    :pswitch_0
    const/4 v3, 0x0

    .line 2985
    const/4 v1, 0x0

    .line 2986
    goto :goto_0

    .line 2988
    :pswitch_1
    const/4 v3, 0x0

    .line 2989
    const/4 v1, 0x0

    .line 2990
    goto :goto_0

    .line 2992
    :pswitch_2
    const/4 v3, 0x0

    .line 2993
    const/4 v1, 0x0

    .line 2994
    goto :goto_0

    .line 2996
    :pswitch_3
    const/4 v3, 0x0

    .line 2997
    const/4 v1, 0x0

    .line 2998
    goto :goto_0

    .line 3000
    :pswitch_4
    const/4 v3, 0x0

    .line 3001
    const/4 v1, 0x0

    .line 3002
    goto :goto_0

    .line 3004
    :pswitch_5
    const/4 v3, 0x0

    .line 3005
    const/4 v1, 0x0

    .line 3006
    goto :goto_0

    .line 3008
    :pswitch_6
    const/4 v3, 0x0

    .line 3009
    const/4 v1, 0x0

    .line 3010
    goto :goto_0

    .line 3012
    :pswitch_7
    const/4 v3, 0x0

    .line 3013
    const/4 v1, 0x0

    .line 3014
    goto :goto_0

    .line 3016
    :pswitch_8
    const/4 v3, 0x0

    .line 3017
    const/4 v1, 0x0

    .line 3018
    goto :goto_0

    .line 3020
    :pswitch_9
    const/4 v3, 0x0

    .line 3021
    const/4 v1, 0x0

    .line 3022
    goto :goto_0

    .line 3024
    :pswitch_a
    const/4 v3, 0x0

    .line 3025
    const/4 v1, 0x0

    .line 3026
    goto :goto_0

    .line 3030
    :cond_0
    if-ne p1, v5, :cond_1

    .line 3032
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3034
    :pswitch_b
    const/4 v3, 0x0

    .line 3035
    const/4 v1, 0x0

    .line 3036
    goto :goto_0

    .line 3038
    :pswitch_c
    const/4 v3, 0x1

    .line 3039
    const/4 v1, 0x1

    .line 3040
    goto :goto_0

    .line 3042
    :pswitch_d
    const/4 v3, 0x1

    .line 3043
    const/4 v1, 0x1

    .line 3044
    goto :goto_0

    .line 3046
    :pswitch_e
    const/4 v3, 0x1

    .line 3047
    const/4 v1, 0x1

    .line 3048
    goto :goto_0

    .line 3050
    :pswitch_f
    const/4 v3, 0x1

    .line 3051
    const/4 v1, 0x1

    .line 3052
    goto :goto_0

    .line 3054
    :pswitch_10
    const/4 v3, 0x1

    .line 3055
    const/4 v1, 0x1

    .line 3056
    goto :goto_0

    .line 3058
    :pswitch_11
    const/4 v3, 0x1

    .line 3059
    const/4 v1, 0x1

    .line 3060
    goto :goto_0

    .line 3062
    :pswitch_12
    const/4 v3, 0x1

    .line 3063
    const/4 v1, 0x1

    .line 3064
    goto :goto_0

    .line 3066
    :pswitch_13
    const/4 v3, 0x1

    .line 3067
    const/4 v1, 0x1

    .line 3068
    goto :goto_0

    .line 3070
    :pswitch_14
    const/4 v3, 0x1

    .line 3071
    const/4 v1, 0x1

    .line 3072
    goto :goto_0

    .line 3074
    :pswitch_15
    const/4 v3, 0x1

    .line 3075
    const/4 v1, 0x1

    .line 3076
    goto :goto_0

    .line 3080
    :cond_1
    if-ne p1, v6, :cond_2

    .line 3082
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 3084
    :pswitch_16
    const/4 v3, 0x0

    .line 3085
    const/4 v1, 0x0

    .line 3086
    goto :goto_0

    .line 3088
    :pswitch_17
    const/4 v3, 0x0

    .line 3089
    const/4 v1, 0x6

    .line 3090
    goto :goto_0

    .line 3092
    :pswitch_18
    const/4 v3, 0x0

    .line 3093
    const/16 v1, 0xc

    .line 3094
    goto :goto_0

    .line 3096
    :pswitch_19
    const/4 v3, 0x0

    .line 3097
    const/16 v1, 0x10

    .line 3098
    goto :goto_0

    .line 3100
    :pswitch_1a
    const/4 v3, 0x0

    .line 3101
    const/16 v1, 0x15

    .line 3102
    goto :goto_0

    .line 3104
    :pswitch_1b
    const/4 v3, 0x0

    .line 3105
    const/16 v1, 0x1a

    .line 3106
    goto :goto_0

    .line 3108
    :pswitch_1c
    const/4 v3, 0x0

    .line 3109
    const/16 v1, 0x20

    .line 3110
    goto :goto_0

    .line 3112
    :pswitch_1d
    const/4 v3, 0x0

    .line 3113
    const/16 v1, 0x29

    .line 3114
    goto :goto_0

    .line 3116
    :pswitch_1e
    const/4 v3, 0x0

    .line 3117
    const/16 v1, 0x33

    .line 3118
    goto :goto_0

    .line 3120
    :pswitch_1f
    const/4 v3, 0x0

    .line 3121
    const/16 v1, 0x3d

    .line 3122
    goto :goto_0

    .line 3124
    :pswitch_20
    const/4 v3, 0x0

    .line 3125
    const/16 v1, 0x47

    .line 3126
    goto :goto_0

    .line 3130
    :cond_2
    const/4 v3, -0x1

    .line 3131
    const/4 v1, -0x1

    goto :goto_0

    .line 2982
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 3032
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 3082
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6199
    const/4 v3, 0x0

    .line 6200
    .local v3, "min":I
    const/4 v1, 0x0

    .line 6202
    .local v1, "max":I
    const/4 v0, 0x0

    .line 6204
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 6207
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 6210
    if-nez p1, :cond_0

    .line 6212
    packed-switch v0, :pswitch_data_0

    .line 6364
    :goto_0
    aput v1, v2, v4

    .line 6365
    aput v3, v2, v5

    .line 6367
    return-object v2

    .line 6214
    :pswitch_0
    const/4 v3, 0x0

    .line 6215
    const/4 v1, 0x0

    .line 6216
    goto :goto_0

    .line 6218
    :pswitch_1
    const/4 v3, 0x0

    .line 6219
    const/4 v1, 0x0

    .line 6220
    goto :goto_0

    .line 6222
    :pswitch_2
    const/4 v3, 0x0

    .line 6223
    const/4 v1, 0x0

    .line 6224
    goto :goto_0

    .line 6226
    :pswitch_3
    const/4 v3, 0x0

    .line 6227
    const/4 v1, 0x0

    .line 6228
    goto :goto_0

    .line 6230
    :pswitch_4
    const/4 v3, 0x0

    .line 6231
    const/4 v1, 0x0

    .line 6232
    goto :goto_0

    .line 6234
    :pswitch_5
    const/4 v3, 0x0

    .line 6235
    const/4 v1, 0x0

    .line 6236
    goto :goto_0

    .line 6238
    :pswitch_6
    const/4 v3, 0x0

    .line 6239
    const/4 v1, 0x0

    .line 6240
    goto :goto_0

    .line 6242
    :pswitch_7
    const/4 v3, 0x0

    .line 6243
    const/4 v1, 0x0

    .line 6244
    goto :goto_0

    .line 6246
    :pswitch_8
    const/4 v3, 0x0

    .line 6247
    const/4 v1, 0x0

    .line 6248
    goto :goto_0

    .line 6250
    :pswitch_9
    const/4 v3, 0x0

    .line 6251
    const/4 v1, 0x0

    .line 6252
    goto :goto_0

    .line 6254
    :pswitch_a
    const/4 v3, 0x0

    .line 6255
    const/4 v1, 0x0

    .line 6256
    goto :goto_0

    .line 6260
    :cond_0
    if-ne p1, v5, :cond_1

    .line 6262
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 6264
    :pswitch_b
    const/4 v3, 0x0

    .line 6265
    const/4 v1, 0x0

    .line 6266
    goto :goto_0

    .line 6268
    :pswitch_c
    const/4 v3, 0x0

    .line 6269
    const/4 v1, 0x0

    .line 6270
    goto :goto_0

    .line 6272
    :pswitch_d
    const/4 v3, 0x0

    .line 6273
    const/4 v1, 0x0

    .line 6274
    goto :goto_0

    .line 6276
    :pswitch_e
    const/4 v3, 0x0

    .line 6277
    const/4 v1, 0x0

    .line 6278
    goto :goto_0

    .line 6280
    :pswitch_f
    const/4 v3, 0x0

    .line 6281
    const/4 v1, 0x0

    .line 6282
    goto :goto_0

    .line 6284
    :pswitch_10
    const/4 v3, 0x0

    .line 6285
    const/4 v1, 0x0

    .line 6286
    goto :goto_0

    .line 6288
    :pswitch_11
    const/4 v3, 0x1

    .line 6289
    const/4 v1, 0x1

    .line 6290
    goto :goto_0

    .line 6292
    :pswitch_12
    const/4 v3, 0x1

    .line 6293
    const/4 v1, 0x1

    .line 6294
    goto :goto_0

    .line 6296
    :pswitch_13
    const/4 v3, 0x1

    .line 6297
    const/4 v1, 0x1

    .line 6298
    goto :goto_0

    .line 6300
    :pswitch_14
    const/4 v3, 0x1

    .line 6301
    const/4 v1, 0x1

    .line 6302
    goto :goto_0

    .line 6304
    :pswitch_15
    const/4 v3, 0x1

    .line 6305
    const/4 v1, 0x1

    .line 6306
    goto :goto_0

    .line 6310
    :cond_1
    if-ne p1, v6, :cond_2

    .line 6312
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 6314
    :pswitch_16
    const/4 v3, 0x0

    .line 6315
    const/4 v1, 0x0

    .line 6316
    goto :goto_0

    .line 6318
    :pswitch_17
    const/4 v3, 0x0

    .line 6319
    const/4 v1, 0x0

    .line 6320
    goto :goto_0

    .line 6322
    :pswitch_18
    const/4 v3, 0x0

    .line 6323
    const/4 v1, 0x0

    .line 6324
    goto :goto_0

    .line 6326
    :pswitch_19
    const/4 v3, 0x0

    .line 6327
    const/4 v1, 0x0

    .line 6328
    goto :goto_0

    .line 6330
    :pswitch_1a
    const/4 v3, 0x0

    .line 6331
    const/4 v1, 0x0

    .line 6332
    goto :goto_0

    .line 6334
    :pswitch_1b
    const/4 v3, 0x0

    .line 6335
    const/4 v1, 0x0

    .line 6336
    goto :goto_0

    .line 6338
    :pswitch_1c
    const/4 v3, 0x0

    .line 6339
    const/16 v1, 0x20

    .line 6340
    goto :goto_0

    .line 6342
    :pswitch_1d
    const/4 v3, 0x0

    .line 6343
    const/16 v1, 0x29

    .line 6344
    goto :goto_0

    .line 6346
    :pswitch_1e
    const/4 v3, 0x0

    .line 6347
    const/16 v1, 0x33

    .line 6348
    goto :goto_0

    .line 6350
    :pswitch_1f
    const/4 v3, 0x0

    .line 6351
    const/16 v1, 0x3d

    .line 6352
    goto :goto_0

    .line 6354
    :pswitch_20
    const/4 v3, 0x0

    .line 6355
    const/16 v1, 0x47

    .line 6356
    goto :goto_0

    .line 6360
    :cond_2
    const/4 v3, -0x1

    .line 6361
    const/4 v1, -0x1

    goto :goto_0

    .line 6212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 6262
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 6312
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BR_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2797
    const/4 v3, 0x0

    .line 2798
    .local v3, "min":I
    const/4 v1, 0x0

    .line 2800
    .local v1, "max":I
    const/4 v0, 0x0

    .line 2802
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 2805
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 2808
    if-nez p1, :cond_0

    .line 2810
    packed-switch v0, :pswitch_data_0

    .line 2962
    :goto_0
    aput v1, v2, v4

    .line 2963
    aput v3, v2, v5

    .line 2965
    return-object v2

    .line 2812
    :pswitch_0
    const/4 v3, 0x0

    .line 2813
    const/4 v1, 0x0

    .line 2814
    goto :goto_0

    .line 2816
    :pswitch_1
    const/4 v3, 0x1

    .line 2817
    const/4 v1, 0x1

    .line 2818
    goto :goto_0

    .line 2820
    :pswitch_2
    const/4 v3, 0x1

    .line 2821
    const/4 v1, 0x1

    .line 2822
    goto :goto_0

    .line 2824
    :pswitch_3
    const/4 v3, 0x1

    .line 2825
    const/4 v1, 0x1

    .line 2826
    goto :goto_0

    .line 2828
    :pswitch_4
    const/4 v3, 0x1

    .line 2829
    const/4 v1, 0x1

    .line 2830
    goto :goto_0

    .line 2832
    :pswitch_5
    const/4 v3, 0x1

    .line 2833
    const/4 v1, 0x1

    .line 2834
    goto :goto_0

    .line 2836
    :pswitch_6
    const/4 v3, 0x1

    .line 2837
    const/4 v1, 0x1

    .line 2838
    goto :goto_0

    .line 2840
    :pswitch_7
    const/4 v3, 0x1

    .line 2841
    const/4 v1, 0x1

    .line 2842
    goto :goto_0

    .line 2844
    :pswitch_8
    const/4 v3, 0x1

    .line 2845
    const/4 v1, 0x1

    .line 2846
    goto :goto_0

    .line 2848
    :pswitch_9
    const/4 v3, 0x1

    .line 2849
    const/4 v1, 0x1

    .line 2850
    goto :goto_0

    .line 2852
    :pswitch_a
    const/4 v3, 0x1

    .line 2853
    const/4 v1, 0x1

    .line 2854
    goto :goto_0

    .line 2858
    :cond_0
    if-ne p1, v5, :cond_1

    .line 2860
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2862
    :pswitch_b
    const/4 v3, 0x0

    .line 2863
    const/4 v1, 0x0

    .line 2864
    goto :goto_0

    .line 2866
    :pswitch_c
    const/4 v3, 0x0

    .line 2867
    const/4 v1, 0x0

    .line 2868
    goto :goto_0

    .line 2870
    :pswitch_d
    const/4 v3, 0x0

    .line 2871
    const/4 v1, 0x0

    .line 2872
    goto :goto_0

    .line 2874
    :pswitch_e
    const/4 v3, 0x0

    .line 2875
    const/4 v1, 0x0

    .line 2876
    goto :goto_0

    .line 2878
    :pswitch_f
    const/4 v3, 0x0

    .line 2879
    const/4 v1, 0x0

    .line 2880
    goto :goto_0

    .line 2882
    :pswitch_10
    const/4 v3, 0x0

    .line 2883
    const/4 v1, 0x0

    .line 2884
    goto :goto_0

    .line 2886
    :pswitch_11
    const/4 v3, 0x0

    .line 2887
    const/4 v1, 0x0

    .line 2888
    goto :goto_0

    .line 2890
    :pswitch_12
    const/4 v3, 0x0

    .line 2891
    const/4 v1, 0x0

    .line 2892
    goto :goto_0

    .line 2894
    :pswitch_13
    const/4 v3, 0x0

    .line 2895
    const/4 v1, 0x0

    .line 2896
    goto :goto_0

    .line 2898
    :pswitch_14
    const/4 v3, 0x0

    .line 2899
    const/4 v1, 0x0

    .line 2900
    goto :goto_0

    .line 2902
    :pswitch_15
    const/4 v3, 0x0

    .line 2903
    const/4 v1, 0x0

    .line 2904
    goto :goto_0

    .line 2908
    :cond_1
    if-ne p1, v6, :cond_2

    .line 2910
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2912
    :pswitch_16
    const/4 v3, 0x0

    .line 2913
    const/4 v1, 0x0

    .line 2914
    goto :goto_0

    .line 2916
    :pswitch_17
    const/4 v3, 0x0

    .line 2917
    const/4 v1, 0x6

    .line 2918
    goto :goto_0

    .line 2920
    :pswitch_18
    const/4 v3, 0x0

    .line 2921
    const/16 v1, 0xc

    .line 2922
    goto :goto_0

    .line 2924
    :pswitch_19
    const/4 v3, 0x0

    .line 2925
    const/16 v1, 0x10

    .line 2926
    goto :goto_0

    .line 2928
    :pswitch_1a
    const/4 v3, 0x0

    .line 2929
    const/16 v1, 0x15

    .line 2930
    goto :goto_0

    .line 2932
    :pswitch_1b
    const/4 v3, 0x0

    .line 2933
    const/16 v1, 0x1a

    .line 2934
    goto :goto_0

    .line 2936
    :pswitch_1c
    const/4 v3, 0x0

    .line 2937
    const/16 v1, 0x20

    .line 2938
    goto :goto_0

    .line 2940
    :pswitch_1d
    const/4 v3, 0x0

    .line 2941
    const/16 v1, 0x29

    .line 2942
    goto :goto_0

    .line 2944
    :pswitch_1e
    const/16 v3, 0x20

    .line 2945
    const/16 v1, 0x53

    .line 2946
    goto :goto_0

    .line 2948
    :pswitch_1f
    const/16 v3, 0x29

    .line 2949
    const/16 v1, 0x66

    .line 2950
    goto :goto_0

    .line 2952
    :pswitch_20
    const/16 v3, 0x2f

    .line 2953
    const/16 v1, 0x76

    .line 2954
    goto :goto_0

    .line 2958
    :cond_2
    const/4 v3, -0x1

    .line 2959
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 2810
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2860
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 2910
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6027
    const/4 v3, 0x0

    .line 6028
    .local v3, "min":I
    const/4 v1, 0x0

    .line 6030
    .local v1, "max":I
    const/4 v0, 0x0

    .line 6032
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 6035
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 6038
    if-nez p1, :cond_0

    .line 6040
    packed-switch v0, :pswitch_data_0

    .line 6192
    :goto_0
    aput v1, v2, v4

    .line 6193
    aput v3, v2, v5

    .line 6195
    return-object v2

    .line 6042
    :pswitch_0
    const/4 v3, 0x0

    .line 6043
    const/4 v1, 0x0

    .line 6044
    goto :goto_0

    .line 6046
    :pswitch_1
    const/4 v3, 0x0

    .line 6047
    const/16 v1, 0x9

    .line 6048
    goto :goto_0

    .line 6050
    :pswitch_2
    const/4 v3, 0x0

    .line 6051
    const/16 v1, 0xf

    .line 6052
    goto :goto_0

    .line 6054
    :pswitch_3
    const/4 v3, 0x0

    .line 6055
    const/16 v1, 0x16

    .line 6056
    goto :goto_0

    .line 6058
    :pswitch_4
    const/4 v3, 0x0

    .line 6059
    const/16 v1, 0x1e

    .line 6060
    goto :goto_0

    .line 6062
    :pswitch_5
    const/4 v3, 0x0

    .line 6063
    const/16 v1, 0x27

    .line 6064
    goto :goto_0

    .line 6066
    :pswitch_6
    const/4 v3, 0x1

    .line 6067
    const/4 v1, 0x1

    .line 6068
    goto :goto_0

    .line 6070
    :pswitch_7
    const/4 v3, 0x1

    .line 6071
    const/4 v1, 0x1

    .line 6072
    goto :goto_0

    .line 6074
    :pswitch_8
    const/4 v3, 0x1

    .line 6075
    const/4 v1, 0x1

    .line 6076
    goto :goto_0

    .line 6078
    :pswitch_9
    const/4 v3, 0x1

    .line 6079
    const/4 v1, 0x1

    .line 6080
    goto :goto_0

    .line 6082
    :pswitch_a
    const/4 v3, 0x1

    .line 6083
    const/4 v1, 0x1

    .line 6084
    goto :goto_0

    .line 6088
    :cond_0
    if-ne p1, v5, :cond_1

    .line 6090
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 6092
    :pswitch_b
    const/4 v3, 0x0

    .line 6093
    const/4 v1, 0x0

    .line 6094
    goto :goto_0

    .line 6096
    :pswitch_c
    const/4 v3, 0x0

    .line 6097
    const/16 v1, 0xb

    .line 6098
    goto :goto_0

    .line 6100
    :pswitch_d
    const/4 v3, 0x0

    .line 6101
    const/16 v1, 0x11

    .line 6102
    goto :goto_0

    .line 6104
    :pswitch_e
    const/4 v3, 0x0

    .line 6105
    const/16 v1, 0x18

    .line 6106
    goto :goto_0

    .line 6108
    :pswitch_f
    const/4 v3, 0x0

    .line 6109
    const/16 v1, 0x20

    .line 6110
    goto :goto_0

    .line 6112
    :pswitch_10
    const/4 v3, 0x0

    .line 6113
    const/16 v1, 0x29

    .line 6114
    goto :goto_0

    .line 6116
    :pswitch_11
    const/4 v3, 0x0

    .line 6117
    const/4 v1, 0x0

    .line 6118
    goto :goto_0

    .line 6120
    :pswitch_12
    const/4 v3, 0x0

    .line 6121
    const/4 v1, 0x0

    .line 6122
    goto :goto_0

    .line 6124
    :pswitch_13
    const/4 v3, 0x0

    .line 6125
    const/4 v1, 0x0

    .line 6126
    goto :goto_0

    .line 6128
    :pswitch_14
    const/4 v3, 0x0

    .line 6129
    const/4 v1, 0x0

    .line 6130
    goto :goto_0

    .line 6132
    :pswitch_15
    const/4 v3, 0x0

    .line 6133
    const/4 v1, 0x0

    .line 6134
    goto :goto_0

    .line 6138
    :cond_1
    if-ne p1, v6, :cond_2

    .line 6140
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 6142
    :pswitch_16
    const/4 v3, 0x0

    .line 6143
    const/4 v1, 0x0

    .line 6144
    goto :goto_0

    .line 6146
    :pswitch_17
    const/4 v3, 0x0

    .line 6147
    const/4 v1, 0x4

    .line 6148
    goto :goto_0

    .line 6150
    :pswitch_18
    const/4 v3, 0x0

    .line 6151
    const/4 v1, 0x6

    .line 6152
    goto :goto_0

    .line 6154
    :pswitch_19
    const/4 v3, 0x0

    .line 6155
    const/16 v1, 0x8

    .line 6156
    goto :goto_0

    .line 6158
    :pswitch_1a
    const/4 v3, 0x0

    .line 6159
    const/16 v1, 0x9

    .line 6160
    goto :goto_0

    .line 6162
    :pswitch_1b
    const/4 v3, 0x0

    .line 6163
    const/16 v1, 0xa

    .line 6164
    goto :goto_0

    .line 6166
    :pswitch_1c
    const/4 v3, 0x0

    .line 6167
    const/16 v1, 0x20

    .line 6168
    goto :goto_0

    .line 6170
    :pswitch_1d
    const/4 v3, 0x0

    .line 6171
    const/16 v1, 0x29

    .line 6172
    goto :goto_0

    .line 6174
    :pswitch_1e
    const/16 v3, 0x20

    .line 6175
    const/16 v1, 0x53

    .line 6176
    goto :goto_0

    .line 6178
    :pswitch_1f
    const/16 v3, 0x29

    .line 6179
    const/16 v1, 0x66

    .line 6180
    goto/16 :goto_0

    .line 6182
    :pswitch_20
    const/16 v3, 0x2f

    .line 6183
    const/16 v1, 0x76

    .line 6184
    goto/16 :goto_0

    .line 6188
    :cond_2
    const/4 v3, -0x1

    .line 6189
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 6040
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 6090
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 6140
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CB_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2625
    const/4 v3, 0x0

    .line 2626
    .local v3, "min":I
    const/4 v1, 0x0

    .line 2628
    .local v1, "max":I
    const/4 v0, 0x0

    .line 2630
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 2633
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 2636
    if-nez p1, :cond_0

    .line 2638
    packed-switch v0, :pswitch_data_0

    .line 2790
    :goto_0
    aput v1, v2, v4

    .line 2791
    aput v3, v2, v5

    .line 2793
    return-object v2

    .line 2640
    :pswitch_0
    const/16 v3, 0xff

    .line 2641
    const/16 v1, 0xff

    .line 2642
    goto :goto_0

    .line 2644
    :pswitch_1
    const/16 v3, 0xff

    .line 2645
    const/16 v1, 0xff

    .line 2646
    goto :goto_0

    .line 2648
    :pswitch_2
    const/16 v3, 0xff

    .line 2649
    const/16 v1, 0xff

    .line 2650
    goto :goto_0

    .line 2652
    :pswitch_3
    const/16 v3, 0xff

    .line 2653
    const/16 v1, 0xff

    .line 2654
    goto :goto_0

    .line 2656
    :pswitch_4
    const/16 v3, 0xff

    .line 2657
    const/16 v1, 0xff

    .line 2658
    goto :goto_0

    .line 2660
    :pswitch_5
    const/16 v3, 0xff

    .line 2661
    const/16 v1, 0xff

    .line 2662
    goto :goto_0

    .line 2664
    :pswitch_6
    const/16 v3, 0xff

    .line 2665
    const/16 v1, 0xff

    .line 2666
    goto :goto_0

    .line 2668
    :pswitch_7
    const/16 v3, 0xff

    .line 2669
    const/16 v1, 0xff

    .line 2670
    goto :goto_0

    .line 2672
    :pswitch_8
    const/16 v3, 0xff

    .line 2673
    const/16 v1, 0xff

    .line 2674
    goto :goto_0

    .line 2676
    :pswitch_9
    const/16 v3, 0xff

    .line 2677
    const/16 v1, 0xff

    .line 2678
    goto :goto_0

    .line 2680
    :pswitch_a
    const/16 v3, 0xff

    .line 2681
    const/16 v1, 0xff

    .line 2682
    goto :goto_0

    .line 2686
    :cond_0
    if-ne p1, v5, :cond_1

    .line 2688
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2690
    :pswitch_b
    const/16 v3, 0xff

    .line 2691
    const/16 v1, 0xff

    .line 2692
    goto :goto_0

    .line 2694
    :pswitch_c
    const/16 v3, 0xff

    .line 2695
    const/16 v1, 0xff

    .line 2696
    goto :goto_0

    .line 2698
    :pswitch_d
    const/16 v3, 0xff

    .line 2699
    const/16 v1, 0xff

    .line 2700
    goto :goto_0

    .line 2702
    :pswitch_e
    const/16 v3, 0xff

    .line 2703
    const/16 v1, 0xff

    .line 2704
    goto :goto_0

    .line 2706
    :pswitch_f
    const/16 v3, 0xff

    .line 2707
    const/16 v1, 0xff

    .line 2708
    goto :goto_0

    .line 2710
    :pswitch_10
    const/16 v3, 0xff

    .line 2711
    const/16 v1, 0xff

    .line 2712
    goto :goto_0

    .line 2714
    :pswitch_11
    const/16 v3, 0xff

    .line 2715
    const/16 v1, 0xff

    .line 2716
    goto :goto_0

    .line 2718
    :pswitch_12
    const/16 v3, 0xff

    .line 2719
    const/16 v1, 0xff

    .line 2720
    goto :goto_0

    .line 2722
    :pswitch_13
    const/16 v3, 0xff

    .line 2723
    const/16 v1, 0xff

    .line 2724
    goto :goto_0

    .line 2726
    :pswitch_14
    const/16 v3, 0xff

    .line 2727
    const/16 v1, 0xff

    .line 2728
    goto :goto_0

    .line 2730
    :pswitch_15
    const/16 v3, 0xff

    .line 2731
    const/16 v1, 0xff

    .line 2732
    goto :goto_0

    .line 2736
    :cond_1
    if-ne p1, v6, :cond_2

    .line 2738
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2740
    :pswitch_16
    const/16 v3, 0xff

    .line 2741
    const/16 v1, 0xff

    .line 2742
    goto/16 :goto_0

    .line 2744
    :pswitch_17
    const/16 v3, 0xff

    .line 2745
    const/16 v1, 0xff

    .line 2746
    goto/16 :goto_0

    .line 2748
    :pswitch_18
    const/16 v3, 0xff

    .line 2749
    const/16 v1, 0xff

    .line 2750
    goto/16 :goto_0

    .line 2752
    :pswitch_19
    const/16 v3, 0xff

    .line 2753
    const/16 v1, 0xff

    .line 2754
    goto/16 :goto_0

    .line 2756
    :pswitch_1a
    const/16 v3, 0xff

    .line 2757
    const/16 v1, 0xff

    .line 2758
    goto/16 :goto_0

    .line 2760
    :pswitch_1b
    const/16 v3, 0xff

    .line 2761
    const/16 v1, 0xff

    .line 2762
    goto/16 :goto_0

    .line 2764
    :pswitch_1c
    const/16 v3, 0xff

    .line 2765
    const/16 v1, 0xff

    .line 2766
    goto/16 :goto_0

    .line 2768
    :pswitch_1d
    const/16 v3, 0xff

    .line 2769
    const/16 v1, 0xff

    .line 2770
    goto/16 :goto_0

    .line 2772
    :pswitch_1e
    const/16 v3, 0xff

    .line 2773
    const/16 v1, 0xff

    .line 2774
    goto/16 :goto_0

    .line 2776
    :pswitch_1f
    const/16 v3, 0xff

    .line 2777
    const/16 v1, 0xff

    .line 2778
    goto/16 :goto_0

    .line 2780
    :pswitch_20
    const/16 v3, 0xff

    .line 2781
    const/16 v1, 0xff

    .line 2782
    goto/16 :goto_0

    .line 2786
    :cond_2
    const/4 v3, -0x1

    .line 2787
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 2638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2688
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 2738
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5855
    const/4 v3, 0x0

    .line 5856
    .local v3, "min":I
    const/4 v1, 0x0

    .line 5858
    .local v1, "max":I
    const/4 v0, 0x0

    .line 5860
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 5863
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 5866
    if-nez p1, :cond_0

    .line 5868
    packed-switch v0, :pswitch_data_0

    .line 6020
    :goto_0
    aput v1, v2, v4

    .line 6021
    aput v3, v2, v5

    .line 6023
    return-object v2

    .line 5870
    :pswitch_0
    const/16 v3, 0xff

    .line 5871
    const/16 v1, 0xff

    .line 5872
    goto :goto_0

    .line 5874
    :pswitch_1
    const/16 v3, 0xcc

    .line 5875
    const/16 v1, 0xcb

    .line 5876
    goto :goto_0

    .line 5878
    :pswitch_2
    const/16 v3, 0xcc

    .line 5879
    const/16 v1, 0xca

    .line 5880
    goto :goto_0

    .line 5882
    :pswitch_3
    const/16 v3, 0xcc

    .line 5883
    const/16 v1, 0xca

    .line 5884
    goto :goto_0

    .line 5886
    :pswitch_4
    const/16 v3, 0xcc

    .line 5887
    const/16 v1, 0xca

    .line 5888
    goto :goto_0

    .line 5890
    :pswitch_5
    const/16 v3, 0xcc

    .line 5891
    const/16 v1, 0xca

    .line 5892
    goto :goto_0

    .line 5894
    :pswitch_6
    const/16 v3, 0xff

    .line 5895
    const/16 v1, 0xff

    .line 5896
    goto :goto_0

    .line 5898
    :pswitch_7
    const/16 v3, 0xff

    .line 5899
    const/16 v1, 0xff

    .line 5900
    goto :goto_0

    .line 5902
    :pswitch_8
    const/16 v3, 0xff

    .line 5903
    const/16 v1, 0xff

    .line 5904
    goto :goto_0

    .line 5906
    :pswitch_9
    const/16 v3, 0xff

    .line 5907
    const/16 v1, 0xff

    .line 5908
    goto :goto_0

    .line 5910
    :pswitch_a
    const/16 v3, 0xff

    .line 5911
    const/16 v1, 0xff

    .line 5912
    goto :goto_0

    .line 5916
    :cond_0
    if-ne p1, v5, :cond_1

    .line 5918
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 5920
    :pswitch_b
    const/16 v3, 0xff

    .line 5921
    const/16 v1, 0xff

    .line 5922
    goto :goto_0

    .line 5924
    :pswitch_c
    const/16 v3, 0xcc

    .line 5925
    const/16 v1, 0xcb

    .line 5926
    goto :goto_0

    .line 5928
    :pswitch_d
    const/16 v3, 0xcc

    .line 5929
    const/16 v1, 0xca

    .line 5930
    goto :goto_0

    .line 5932
    :pswitch_e
    const/16 v3, 0xcc

    .line 5933
    const/16 v1, 0xc9

    .line 5934
    goto :goto_0

    .line 5936
    :pswitch_f
    const/16 v3, 0xcc

    .line 5937
    const/16 v1, 0xc9

    .line 5938
    goto :goto_0

    .line 5940
    :pswitch_10
    const/16 v3, 0xcc

    .line 5941
    const/16 v1, 0xc8

    .line 5942
    goto :goto_0

    .line 5944
    :pswitch_11
    const/16 v3, 0xff

    .line 5945
    const/16 v1, 0xff

    .line 5946
    goto :goto_0

    .line 5948
    :pswitch_12
    const/16 v3, 0xff

    .line 5949
    const/16 v1, 0xff

    .line 5950
    goto :goto_0

    .line 5952
    :pswitch_13
    const/16 v3, 0xff

    .line 5953
    const/16 v1, 0xff

    .line 5954
    goto :goto_0

    .line 5956
    :pswitch_14
    const/16 v3, 0xff

    .line 5957
    const/16 v1, 0xff

    .line 5958
    goto :goto_0

    .line 5960
    :pswitch_15
    const/16 v3, 0xff

    .line 5961
    const/16 v1, 0xff

    .line 5962
    goto :goto_0

    .line 5966
    :cond_1
    if-ne p1, v6, :cond_2

    .line 5968
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 5970
    :pswitch_16
    const/16 v3, 0xff

    .line 5971
    const/16 v1, 0xff

    .line 5972
    goto/16 :goto_0

    .line 5974
    :pswitch_17
    const/16 v3, 0xcc

    .line 5975
    const/16 v1, 0xcd

    .line 5976
    goto/16 :goto_0

    .line 5978
    :pswitch_18
    const/16 v3, 0xcc

    .line 5979
    const/16 v1, 0xce

    .line 5980
    goto/16 :goto_0

    .line 5982
    :pswitch_19
    const/16 v3, 0xcc

    .line 5983
    const/16 v1, 0xce

    .line 5984
    goto/16 :goto_0

    .line 5986
    :pswitch_1a
    const/16 v3, 0xcc

    .line 5987
    const/16 v1, 0xce

    .line 5988
    goto/16 :goto_0

    .line 5990
    :pswitch_1b
    const/16 v3, 0xcc

    .line 5991
    const/16 v1, 0xce

    .line 5992
    goto/16 :goto_0

    .line 5994
    :pswitch_1c
    const/16 v3, 0xff

    .line 5995
    const/16 v1, 0xff

    .line 5996
    goto/16 :goto_0

    .line 5998
    :pswitch_1d
    const/16 v3, 0xff

    .line 5999
    const/16 v1, 0xff

    .line 6000
    goto/16 :goto_0

    .line 6002
    :pswitch_1e
    const/16 v3, 0xff

    .line 6003
    const/16 v1, 0xff

    .line 6004
    goto/16 :goto_0

    .line 6006
    :pswitch_1f
    const/16 v3, 0xff

    .line 6007
    const/16 v1, 0xff

    .line 6008
    goto/16 :goto_0

    .line 6010
    :pswitch_20
    const/16 v3, 0xff

    .line 6011
    const/16 v1, 0xff

    .line 6012
    goto/16 :goto_0

    .line 6016
    :cond_2
    const/4 v3, -0x1

    .line 6017
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 5868
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 5918
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 5968
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CG_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2453
    const/4 v3, 0x0

    .line 2454
    .local v3, "min":I
    const/4 v1, 0x0

    .line 2456
    .local v1, "max":I
    const/4 v0, 0x0

    .line 2458
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 2461
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 2464
    if-nez p1, :cond_0

    .line 2466
    packed-switch v0, :pswitch_data_0

    .line 2618
    :goto_0
    aput v1, v2, v4

    .line 2619
    aput v3, v2, v5

    .line 2621
    return-object v2

    .line 2468
    :pswitch_0
    const/16 v3, 0xff

    .line 2469
    const/16 v1, 0xff

    .line 2470
    goto :goto_0

    .line 2472
    :pswitch_1
    const/16 v3, 0xff

    .line 2473
    const/16 v1, 0xff

    .line 2474
    goto :goto_0

    .line 2476
    :pswitch_2
    const/16 v3, 0xff

    .line 2477
    const/16 v1, 0xff

    .line 2478
    goto :goto_0

    .line 2480
    :pswitch_3
    const/16 v3, 0xff

    .line 2481
    const/16 v1, 0xff

    .line 2482
    goto :goto_0

    .line 2484
    :pswitch_4
    const/16 v3, 0xff

    .line 2485
    const/16 v1, 0xff

    .line 2486
    goto :goto_0

    .line 2488
    :pswitch_5
    const/16 v3, 0xff

    .line 2489
    const/16 v1, 0xff

    .line 2490
    goto :goto_0

    .line 2492
    :pswitch_6
    const/16 v3, 0xff

    .line 2493
    const/16 v1, 0xff

    .line 2494
    goto :goto_0

    .line 2496
    :pswitch_7
    const/16 v3, 0xff

    .line 2497
    const/16 v1, 0xff

    .line 2498
    goto :goto_0

    .line 2500
    :pswitch_8
    const/16 v3, 0xff

    .line 2501
    const/16 v1, 0xff

    .line 2502
    goto :goto_0

    .line 2504
    :pswitch_9
    const/16 v3, 0xff

    .line 2505
    const/16 v1, 0xff

    .line 2506
    goto :goto_0

    .line 2508
    :pswitch_a
    const/16 v3, 0xff

    .line 2509
    const/16 v1, 0xff

    .line 2510
    goto :goto_0

    .line 2514
    :cond_0
    if-ne p1, v5, :cond_1

    .line 2516
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2518
    :pswitch_b
    const/16 v3, 0xff

    .line 2519
    const/16 v1, 0xff

    .line 2520
    goto :goto_0

    .line 2522
    :pswitch_c
    const/16 v3, 0xfe

    .line 2523
    const/16 v1, 0xfe

    .line 2524
    goto :goto_0

    .line 2526
    :pswitch_d
    const/16 v3, 0xfe

    .line 2527
    const/16 v1, 0xfe

    .line 2528
    goto :goto_0

    .line 2530
    :pswitch_e
    const/16 v3, 0xfe

    .line 2531
    const/16 v1, 0xfe

    .line 2532
    goto :goto_0

    .line 2534
    :pswitch_f
    const/16 v3, 0xfe

    .line 2535
    const/16 v1, 0xfe

    .line 2536
    goto :goto_0

    .line 2538
    :pswitch_10
    const/16 v3, 0xfe

    .line 2539
    const/16 v1, 0xfe

    .line 2540
    goto :goto_0

    .line 2542
    :pswitch_11
    const/16 v3, 0xfe

    .line 2543
    const/16 v1, 0xfe

    .line 2544
    goto :goto_0

    .line 2546
    :pswitch_12
    const/16 v3, 0xfe

    .line 2547
    const/16 v1, 0xfe

    .line 2548
    goto :goto_0

    .line 2550
    :pswitch_13
    const/16 v3, 0xfe

    .line 2551
    const/16 v1, 0xfe

    .line 2552
    goto :goto_0

    .line 2554
    :pswitch_14
    const/16 v3, 0xfe

    .line 2555
    const/16 v1, 0xfe

    .line 2556
    goto :goto_0

    .line 2558
    :pswitch_15
    const/16 v3, 0xfe

    .line 2559
    const/16 v1, 0xfe

    .line 2560
    goto :goto_0

    .line 2564
    :cond_1
    if-ne p1, v6, :cond_2

    .line 2566
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2568
    :pswitch_16
    const/16 v3, 0xff

    .line 2569
    const/16 v1, 0xff

    .line 2570
    goto/16 :goto_0

    .line 2572
    :pswitch_17
    const/16 v3, 0xff

    .line 2573
    const/16 v1, 0xff

    .line 2574
    goto/16 :goto_0

    .line 2576
    :pswitch_18
    const/16 v3, 0xff

    .line 2577
    const/16 v1, 0xff

    .line 2578
    goto/16 :goto_0

    .line 2580
    :pswitch_19
    const/16 v3, 0xff

    .line 2581
    const/16 v1, 0xff

    .line 2582
    goto/16 :goto_0

    .line 2584
    :pswitch_1a
    const/16 v3, 0xff

    .line 2585
    const/16 v1, 0xff

    .line 2586
    goto/16 :goto_0

    .line 2588
    :pswitch_1b
    const/16 v3, 0xff

    .line 2589
    const/16 v1, 0xff

    .line 2590
    goto/16 :goto_0

    .line 2592
    :pswitch_1c
    const/16 v3, 0xff

    .line 2593
    const/16 v1, 0xff

    .line 2594
    goto/16 :goto_0

    .line 2596
    :pswitch_1d
    const/16 v3, 0xff

    .line 2597
    const/16 v1, 0xff

    .line 2598
    goto/16 :goto_0

    .line 2600
    :pswitch_1e
    const/16 v3, 0xff

    .line 2601
    const/16 v1, 0xff

    .line 2602
    goto/16 :goto_0

    .line 2604
    :pswitch_1f
    const/16 v3, 0xff

    .line 2605
    const/16 v1, 0xff

    .line 2606
    goto/16 :goto_0

    .line 2608
    :pswitch_20
    const/16 v3, 0xff

    .line 2609
    const/16 v1, 0xff

    .line 2610
    goto/16 :goto_0

    .line 2614
    :cond_2
    const/4 v3, -0x1

    .line 2615
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 2466
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2516
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 2566
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5683
    const/4 v3, 0x0

    .line 5684
    .local v3, "min":I
    const/4 v1, 0x0

    .line 5686
    .local v1, "max":I
    const/4 v0, 0x0

    .line 5688
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 5691
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 5694
    if-nez p1, :cond_0

    .line 5696
    packed-switch v0, :pswitch_data_0

    .line 5848
    :goto_0
    aput v1, v2, v4

    .line 5849
    aput v3, v2, v5

    .line 5851
    return-object v2

    .line 5698
    :pswitch_0
    const/16 v3, 0xff

    .line 5699
    const/16 v1, 0xff

    .line 5700
    goto :goto_0

    .line 5702
    :pswitch_1
    const/16 v3, 0xcc

    .line 5703
    const/16 v1, 0xd3

    .line 5704
    goto :goto_0

    .line 5706
    :pswitch_2
    const/16 v3, 0xcc

    .line 5707
    const/16 v1, 0xd7

    .line 5708
    goto :goto_0

    .line 5710
    :pswitch_3
    const/16 v3, 0xcc

    .line 5711
    const/16 v1, 0xe1

    .line 5712
    goto :goto_0

    .line 5714
    :pswitch_4
    const/16 v3, 0xcc

    .line 5715
    const/16 v1, 0xe6

    .line 5716
    goto :goto_0

    .line 5718
    :pswitch_5
    const/16 v3, 0xcf

    .line 5719
    const/16 v1, 0xe6

    .line 5720
    goto :goto_0

    .line 5722
    :pswitch_6
    const/16 v3, 0xff

    .line 5723
    const/16 v1, 0xff

    .line 5724
    goto :goto_0

    .line 5726
    :pswitch_7
    const/16 v3, 0xff

    .line 5727
    const/16 v1, 0xff

    .line 5728
    goto :goto_0

    .line 5730
    :pswitch_8
    const/16 v3, 0xff

    .line 5731
    const/16 v1, 0xff

    .line 5732
    goto :goto_0

    .line 5734
    :pswitch_9
    const/16 v3, 0xff

    .line 5735
    const/16 v1, 0xff

    .line 5736
    goto :goto_0

    .line 5738
    :pswitch_a
    const/16 v3, 0xff

    .line 5739
    const/16 v1, 0xff

    .line 5740
    goto :goto_0

    .line 5744
    :cond_0
    if-ne p1, v5, :cond_1

    .line 5746
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 5748
    :pswitch_b
    const/16 v3, 0xff

    .line 5749
    const/16 v1, 0xff

    .line 5750
    goto :goto_0

    .line 5752
    :pswitch_c
    const/16 v3, 0xcc

    .line 5753
    const/16 v1, 0xd8

    .line 5754
    goto :goto_0

    .line 5756
    :pswitch_d
    const/16 v3, 0xcc

    .line 5757
    const/16 v1, 0xe0

    .line 5758
    goto :goto_0

    .line 5760
    :pswitch_e
    const/16 v3, 0xcc

    .line 5761
    const/16 v1, 0xe8

    .line 5762
    goto :goto_0

    .line 5764
    :pswitch_f
    const/16 v3, 0xcc

    .line 5765
    const/16 v1, 0xf2

    .line 5766
    goto :goto_0

    .line 5768
    :pswitch_10
    const/16 v3, 0xcc

    .line 5769
    const/16 v1, 0xfd

    .line 5770
    goto :goto_0

    .line 5772
    :pswitch_11
    const/16 v3, 0xfe

    .line 5773
    const/16 v1, 0xfe

    .line 5774
    goto :goto_0

    .line 5776
    :pswitch_12
    const/16 v3, 0xfe

    .line 5777
    const/16 v1, 0xfe

    .line 5778
    goto :goto_0

    .line 5780
    :pswitch_13
    const/16 v3, 0xfe

    .line 5781
    const/16 v1, 0xfe

    .line 5782
    goto :goto_0

    .line 5784
    :pswitch_14
    const/16 v3, 0xfe

    .line 5785
    const/16 v1, 0xfe

    .line 5786
    goto :goto_0

    .line 5788
    :pswitch_15
    const/16 v3, 0xfe

    .line 5789
    const/16 v1, 0xfe

    .line 5790
    goto :goto_0

    .line 5794
    :cond_1
    if-ne p1, v6, :cond_2

    .line 5796
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 5798
    :pswitch_16
    const/16 v3, 0xff

    .line 5799
    const/16 v1, 0xff

    .line 5800
    goto/16 :goto_0

    .line 5802
    :pswitch_17
    const/16 v3, 0xcc

    .line 5803
    const/16 v1, 0xd0

    .line 5804
    goto/16 :goto_0

    .line 5806
    :pswitch_18
    const/16 v3, 0xcc

    .line 5807
    const/16 v1, 0xd2

    .line 5808
    goto/16 :goto_0

    .line 5810
    :pswitch_19
    const/16 v3, 0xcc

    .line 5811
    const/16 v1, 0xd3

    .line 5812
    goto/16 :goto_0

    .line 5814
    :pswitch_1a
    const/16 v3, 0xcc

    .line 5815
    const/16 v1, 0xd3

    .line 5816
    goto/16 :goto_0

    .line 5818
    :pswitch_1b
    const/16 v3, 0xcc

    .line 5819
    const/16 v1, 0xd2

    .line 5820
    goto/16 :goto_0

    .line 5822
    :pswitch_1c
    const/16 v3, 0xff

    .line 5823
    const/16 v1, 0xff

    .line 5824
    goto/16 :goto_0

    .line 5826
    :pswitch_1d
    const/16 v3, 0xff

    .line 5827
    const/16 v1, 0xff

    .line 5828
    goto/16 :goto_0

    .line 5830
    :pswitch_1e
    const/16 v3, 0xff

    .line 5831
    const/16 v1, 0xff

    .line 5832
    goto/16 :goto_0

    .line 5834
    :pswitch_1f
    const/16 v3, 0xff

    .line 5835
    const/16 v1, 0xff

    .line 5836
    goto/16 :goto_0

    .line 5838
    :pswitch_20
    const/16 v3, 0xff

    .line 5839
    const/16 v1, 0xff

    .line 5840
    goto/16 :goto_0

    .line 5844
    :cond_2
    const/4 v3, -0x1

    .line 5845
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 5696
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 5746
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 5796
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CR_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2281
    const/4 v3, 0x0

    .line 2282
    .local v3, "min":I
    const/4 v1, 0x0

    .line 2284
    .local v1, "max":I
    const/4 v0, 0x0

    .line 2286
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 2289
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 2292
    if-nez p1, :cond_0

    .line 2294
    packed-switch v0, :pswitch_data_0

    .line 2446
    :goto_0
    aput v1, v2, v4

    .line 2447
    aput v3, v2, v5

    .line 2449
    return-object v2

    .line 2296
    :pswitch_0
    const/4 v3, 0x0

    .line 2297
    const/4 v1, 0x0

    .line 2298
    goto :goto_0

    .line 2300
    :pswitch_1
    const/4 v3, 0x1

    .line 2301
    const/4 v1, 0x1

    .line 2302
    goto :goto_0

    .line 2304
    :pswitch_2
    const/4 v3, 0x1

    .line 2305
    const/4 v1, 0x1

    .line 2306
    goto :goto_0

    .line 2308
    :pswitch_3
    const/4 v3, 0x1

    .line 2309
    const/4 v1, 0x1

    .line 2310
    goto :goto_0

    .line 2312
    :pswitch_4
    const/4 v3, 0x1

    .line 2313
    const/4 v1, 0x1

    .line 2314
    goto :goto_0

    .line 2316
    :pswitch_5
    const/4 v3, 0x1

    .line 2317
    const/4 v1, 0x1

    .line 2318
    goto :goto_0

    .line 2320
    :pswitch_6
    const/4 v3, 0x1

    .line 2321
    const/4 v1, 0x1

    .line 2322
    goto :goto_0

    .line 2324
    :pswitch_7
    const/4 v3, 0x1

    .line 2325
    const/4 v1, 0x1

    .line 2326
    goto :goto_0

    .line 2328
    :pswitch_8
    const/4 v3, 0x1

    .line 2329
    const/4 v1, 0x1

    .line 2330
    goto :goto_0

    .line 2332
    :pswitch_9
    const/4 v3, 0x1

    .line 2333
    const/4 v1, 0x1

    .line 2334
    goto :goto_0

    .line 2336
    :pswitch_a
    const/4 v3, 0x1

    .line 2337
    const/4 v1, 0x1

    .line 2338
    goto :goto_0

    .line 2342
    :cond_0
    if-ne p1, v5, :cond_1

    .line 2344
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2346
    :pswitch_b
    const/4 v3, 0x0

    .line 2347
    const/4 v1, 0x0

    .line 2348
    goto :goto_0

    .line 2350
    :pswitch_c
    const/4 v3, 0x0

    .line 2351
    const/4 v1, 0x0

    .line 2352
    goto :goto_0

    .line 2354
    :pswitch_d
    const/4 v3, 0x0

    .line 2355
    const/4 v1, 0x0

    .line 2356
    goto :goto_0

    .line 2358
    :pswitch_e
    const/4 v3, 0x0

    .line 2359
    const/4 v1, 0x0

    .line 2360
    goto :goto_0

    .line 2362
    :pswitch_f
    const/4 v3, 0x0

    .line 2363
    const/4 v1, 0x0

    .line 2364
    goto :goto_0

    .line 2366
    :pswitch_10
    const/4 v3, 0x0

    .line 2367
    const/4 v1, 0x0

    .line 2368
    goto :goto_0

    .line 2370
    :pswitch_11
    const/4 v3, 0x0

    .line 2371
    const/4 v1, 0x0

    .line 2372
    goto :goto_0

    .line 2374
    :pswitch_12
    const/4 v3, 0x0

    .line 2375
    const/4 v1, 0x0

    .line 2376
    goto :goto_0

    .line 2378
    :pswitch_13
    const/4 v3, 0x0

    .line 2379
    const/4 v1, 0x0

    .line 2380
    goto :goto_0

    .line 2382
    :pswitch_14
    const/4 v3, 0x0

    .line 2383
    const/4 v1, 0x0

    .line 2384
    goto :goto_0

    .line 2386
    :pswitch_15
    const/4 v3, 0x0

    .line 2387
    const/4 v1, 0x0

    .line 2388
    goto :goto_0

    .line 2392
    :cond_1
    if-ne p1, v6, :cond_2

    .line 2394
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2396
    :pswitch_16
    const/4 v3, 0x0

    .line 2397
    const/4 v1, 0x0

    .line 2398
    goto :goto_0

    .line 2400
    :pswitch_17
    const/4 v3, 0x0

    .line 2401
    const/4 v1, 0x0

    .line 2402
    goto :goto_0

    .line 2404
    :pswitch_18
    const/4 v3, 0x0

    .line 2405
    const/4 v1, 0x0

    .line 2406
    goto :goto_0

    .line 2408
    :pswitch_19
    const/4 v3, 0x0

    .line 2409
    const/4 v1, 0x0

    .line 2410
    goto :goto_0

    .line 2412
    :pswitch_1a
    const/4 v3, 0x0

    .line 2413
    const/4 v1, 0x0

    .line 2414
    goto :goto_0

    .line 2416
    :pswitch_1b
    const/4 v3, 0x0

    .line 2417
    const/4 v1, 0x0

    .line 2418
    goto :goto_0

    .line 2420
    :pswitch_1c
    const/4 v3, 0x0

    .line 2421
    const/4 v1, 0x0

    .line 2422
    goto :goto_0

    .line 2424
    :pswitch_1d
    const/4 v3, 0x0

    .line 2425
    const/4 v1, 0x0

    .line 2426
    goto :goto_0

    .line 2428
    :pswitch_1e
    const/4 v3, 0x0

    .line 2429
    const/4 v1, 0x0

    .line 2430
    goto :goto_0

    .line 2432
    :pswitch_1f
    const/4 v3, 0x0

    .line 2433
    const/4 v1, 0x0

    .line 2434
    goto :goto_0

    .line 2436
    :pswitch_20
    const/4 v3, 0x0

    .line 2437
    const/4 v1, 0x0

    .line 2438
    goto :goto_0

    .line 2442
    :cond_2
    const/4 v3, -0x1

    .line 2443
    const/4 v1, -0x1

    goto :goto_0

    .line 2294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2344
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 2394
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5511
    const/4 v3, 0x0

    .line 5512
    .local v3, "min":I
    const/4 v1, 0x0

    .line 5514
    .local v1, "max":I
    const/4 v0, 0x0

    .line 5516
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 5519
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 5522
    if-nez p1, :cond_0

    .line 5524
    packed-switch v0, :pswitch_data_0

    .line 5676
    :goto_0
    aput v1, v2, v4

    .line 5677
    aput v3, v2, v5

    .line 5679
    return-object v2

    .line 5526
    :pswitch_0
    const/4 v3, 0x0

    .line 5527
    const/4 v1, 0x0

    .line 5528
    goto :goto_0

    .line 5530
    :pswitch_1
    const/4 v3, 0x0

    .line 5531
    const/4 v1, 0x0

    .line 5532
    goto :goto_0

    .line 5534
    :pswitch_2
    const/4 v3, 0x0

    .line 5535
    const/4 v1, 0x0

    .line 5536
    goto :goto_0

    .line 5538
    :pswitch_3
    const/4 v3, 0x0

    .line 5539
    const/4 v1, 0x0

    .line 5540
    goto :goto_0

    .line 5542
    :pswitch_4
    const/4 v3, 0x0

    .line 5543
    const/4 v1, 0x0

    .line 5544
    goto :goto_0

    .line 5546
    :pswitch_5
    const/4 v3, 0x0

    .line 5547
    const/4 v1, 0x0

    .line 5548
    goto :goto_0

    .line 5550
    :pswitch_6
    const/4 v3, 0x1

    .line 5551
    const/4 v1, 0x1

    .line 5552
    goto :goto_0

    .line 5554
    :pswitch_7
    const/4 v3, 0x1

    .line 5555
    const/4 v1, 0x1

    .line 5556
    goto :goto_0

    .line 5558
    :pswitch_8
    const/4 v3, 0x1

    .line 5559
    const/4 v1, 0x1

    .line 5560
    goto :goto_0

    .line 5562
    :pswitch_9
    const/4 v3, 0x1

    .line 5563
    const/4 v1, 0x1

    .line 5564
    goto :goto_0

    .line 5566
    :pswitch_a
    const/4 v3, 0x1

    .line 5567
    const/4 v1, 0x1

    .line 5568
    goto :goto_0

    .line 5572
    :cond_0
    if-ne p1, v5, :cond_1

    .line 5574
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 5576
    :pswitch_b
    const/4 v3, 0x0

    .line 5577
    const/4 v1, 0x0

    .line 5578
    goto :goto_0

    .line 5580
    :pswitch_c
    const/4 v3, 0x0

    .line 5581
    const/4 v1, 0x0

    .line 5582
    goto :goto_0

    .line 5584
    :pswitch_d
    const/4 v3, 0x0

    .line 5585
    const/4 v1, 0x0

    .line 5586
    goto :goto_0

    .line 5588
    :pswitch_e
    const/4 v3, 0x0

    .line 5589
    const/4 v1, 0x0

    .line 5590
    goto :goto_0

    .line 5592
    :pswitch_f
    const/4 v3, 0x0

    .line 5593
    const/4 v1, 0x0

    .line 5594
    goto :goto_0

    .line 5596
    :pswitch_10
    const/4 v3, 0x0

    .line 5597
    const/4 v1, 0x0

    .line 5598
    goto :goto_0

    .line 5600
    :pswitch_11
    const/4 v3, 0x0

    .line 5601
    const/4 v1, 0x0

    .line 5602
    goto :goto_0

    .line 5604
    :pswitch_12
    const/4 v3, 0x0

    .line 5605
    const/4 v1, 0x0

    .line 5606
    goto :goto_0

    .line 5608
    :pswitch_13
    const/4 v3, 0x0

    .line 5609
    const/4 v1, 0x0

    .line 5610
    goto :goto_0

    .line 5612
    :pswitch_14
    const/4 v3, 0x0

    .line 5613
    const/4 v1, 0x0

    .line 5614
    goto :goto_0

    .line 5616
    :pswitch_15
    const/4 v3, 0x0

    .line 5617
    const/4 v1, 0x0

    .line 5618
    goto :goto_0

    .line 5622
    :cond_1
    if-ne p1, v6, :cond_2

    .line 5624
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 5626
    :pswitch_16
    const/4 v3, 0x0

    .line 5627
    const/4 v1, 0x0

    .line 5628
    goto :goto_0

    .line 5630
    :pswitch_17
    const/4 v3, 0x0

    .line 5631
    const/4 v1, 0x0

    .line 5632
    goto :goto_0

    .line 5634
    :pswitch_18
    const/4 v3, 0x0

    .line 5635
    const/4 v1, 0x0

    .line 5636
    goto :goto_0

    .line 5638
    :pswitch_19
    const/4 v3, 0x0

    .line 5639
    const/4 v1, 0x0

    .line 5640
    goto :goto_0

    .line 5642
    :pswitch_1a
    const/4 v3, 0x0

    .line 5643
    const/4 v1, 0x0

    .line 5644
    goto :goto_0

    .line 5646
    :pswitch_1b
    const/4 v3, 0x0

    .line 5647
    const/4 v1, 0x0

    .line 5648
    goto :goto_0

    .line 5650
    :pswitch_1c
    const/4 v3, 0x0

    .line 5651
    const/4 v1, 0x0

    .line 5652
    goto :goto_0

    .line 5654
    :pswitch_1d
    const/4 v3, 0x0

    .line 5655
    const/4 v1, 0x0

    .line 5656
    goto :goto_0

    .line 5658
    :pswitch_1e
    const/4 v3, 0x0

    .line 5659
    const/4 v1, 0x0

    .line 5660
    goto :goto_0

    .line 5662
    :pswitch_1f
    const/4 v3, 0x0

    .line 5663
    const/4 v1, 0x0

    .line 5664
    goto :goto_0

    .line 5666
    :pswitch_20
    const/4 v3, 0x0

    .line 5667
    const/4 v1, 0x0

    .line 5668
    goto :goto_0

    .line 5672
    :cond_2
    const/4 v3, -0x1

    .line 5673
    const/4 v1, -0x1

    goto :goto_0

    .line 5524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 5574
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 5624
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GB_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1076
    const/4 v3, 0x0

    .line 1077
    .local v3, "min":I
    const/4 v1, 0x0

    .line 1079
    .local v1, "max":I
    const/4 v0, 0x0

    .line 1081
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 1084
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 1087
    if-nez p1, :cond_0

    .line 1089
    packed-switch v0, :pswitch_data_0

    .line 1241
    :goto_0
    aput v1, v2, v4

    .line 1242
    aput v3, v2, v5

    .line 1244
    return-object v2

    .line 1091
    :pswitch_0
    const/4 v3, 0x0

    .line 1092
    const/4 v1, 0x0

    .line 1093
    goto :goto_0

    .line 1095
    :pswitch_1
    const/16 v3, 0x13

    .line 1096
    const/16 v1, 0x13

    .line 1097
    goto :goto_0

    .line 1099
    :pswitch_2
    const/16 v3, 0x25

    .line 1100
    const/16 v1, 0x25

    .line 1101
    goto :goto_0

    .line 1103
    :pswitch_3
    const/16 v3, 0x33

    .line 1104
    const/16 v1, 0x33

    .line 1105
    goto :goto_0

    .line 1107
    :pswitch_4
    const/16 v3, 0x3f

    .line 1108
    const/16 v1, 0x3f

    .line 1109
    goto :goto_0

    .line 1111
    :pswitch_5
    const/16 v3, 0x4b

    .line 1112
    const/16 v1, 0x4b

    .line 1113
    goto :goto_0

    .line 1115
    :pswitch_6
    const/16 v3, 0x55

    .line 1116
    const/16 v1, 0x55

    .line 1117
    goto :goto_0

    .line 1119
    :pswitch_7
    const/16 v3, 0x5d

    .line 1120
    const/16 v1, 0x5d

    .line 1121
    goto :goto_0

    .line 1123
    :pswitch_8
    const/16 v3, 0x67

    .line 1124
    const/16 v1, 0x67

    .line 1125
    goto :goto_0

    .line 1127
    :pswitch_9
    const/16 v3, 0x6d

    .line 1128
    const/16 v1, 0x6d

    .line 1129
    goto :goto_0

    .line 1131
    :pswitch_a
    const/16 v3, 0x73

    .line 1132
    const/16 v1, 0x73

    .line 1133
    goto :goto_0

    .line 1137
    :cond_0
    if-ne p1, v5, :cond_1

    .line 1139
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1141
    :pswitch_b
    const/4 v3, 0x0

    .line 1142
    const/4 v1, 0x0

    .line 1143
    goto :goto_0

    .line 1145
    :pswitch_c
    const/16 v3, 0x13

    .line 1146
    const/16 v1, 0x13

    .line 1147
    goto :goto_0

    .line 1149
    :pswitch_d
    const/16 v3, 0x23

    .line 1150
    const/16 v1, 0x23

    .line 1151
    goto :goto_0

    .line 1153
    :pswitch_e
    const/16 v3, 0x2f

    .line 1154
    const/16 v1, 0x2f

    .line 1155
    goto :goto_0

    .line 1157
    :pswitch_f
    const/16 v3, 0x39

    .line 1158
    const/16 v1, 0x39

    .line 1159
    goto :goto_0

    .line 1161
    :pswitch_10
    const/16 v3, 0x41

    .line 1162
    const/16 v1, 0x41

    .line 1163
    goto :goto_0

    .line 1165
    :pswitch_11
    const/16 v3, 0x49

    .line 1166
    const/16 v1, 0x49

    .line 1167
    goto :goto_0

    .line 1169
    :pswitch_12
    const/16 v3, 0x4f

    .line 1170
    const/16 v1, 0x4f

    .line 1171
    goto :goto_0

    .line 1173
    :pswitch_13
    const/16 v3, 0x55

    .line 1174
    const/16 v1, 0x55

    .line 1175
    goto :goto_0

    .line 1177
    :pswitch_14
    const/16 v3, 0x59

    .line 1178
    const/16 v1, 0x59

    .line 1179
    goto :goto_0

    .line 1181
    :pswitch_15
    const/16 v3, 0x5e

    .line 1182
    const/16 v1, 0x5e

    .line 1183
    goto :goto_0

    .line 1187
    :cond_1
    if-ne p1, v6, :cond_2

    .line 1189
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1191
    :pswitch_16
    const/4 v3, 0x0

    .line 1192
    const/4 v1, 0x0

    .line 1193
    goto :goto_0

    .line 1195
    :pswitch_17
    const/4 v3, 0x0

    .line 1196
    const/4 v1, 0x0

    .line 1197
    goto :goto_0

    .line 1199
    :pswitch_18
    const/4 v3, 0x0

    .line 1200
    const/4 v1, 0x0

    .line 1201
    goto/16 :goto_0

    .line 1203
    :pswitch_19
    const/4 v3, 0x0

    .line 1204
    const/4 v1, 0x0

    .line 1205
    goto/16 :goto_0

    .line 1207
    :pswitch_1a
    const/4 v3, 0x0

    .line 1208
    const/4 v1, 0x0

    .line 1209
    goto/16 :goto_0

    .line 1211
    :pswitch_1b
    const/4 v3, 0x0

    .line 1212
    const/4 v1, 0x0

    .line 1213
    goto/16 :goto_0

    .line 1215
    :pswitch_1c
    const/4 v3, 0x0

    .line 1216
    const/4 v1, 0x0

    .line 1217
    goto/16 :goto_0

    .line 1219
    :pswitch_1d
    const/4 v3, 0x0

    .line 1220
    const/4 v1, 0x0

    .line 1221
    goto/16 :goto_0

    .line 1223
    :pswitch_1e
    const/4 v3, 0x0

    .line 1224
    const/4 v1, 0x0

    .line 1225
    goto/16 :goto_0

    .line 1227
    :pswitch_1f
    const/4 v3, 0x0

    .line 1228
    const/4 v1, 0x0

    .line 1229
    goto/16 :goto_0

    .line 1231
    :pswitch_20
    const/4 v3, 0x0

    .line 1232
    const/4 v1, 0x0

    .line 1233
    goto/16 :goto_0

    .line 1237
    :cond_2
    const/4 v3, -0x1

    .line 1238
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1089
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1139
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 1189
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4306
    const/4 v3, 0x0

    .line 4307
    .local v3, "min":I
    const/4 v1, 0x0

    .line 4309
    .local v1, "max":I
    const/4 v0, 0x0

    .line 4311
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 4314
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 4317
    if-nez p1, :cond_0

    .line 4319
    packed-switch v0, :pswitch_data_0

    .line 4471
    :goto_0
    aput v1, v2, v4

    .line 4472
    aput v3, v2, v5

    .line 4474
    return-object v2

    .line 4321
    :pswitch_0
    const/4 v3, 0x0

    .line 4322
    const/4 v1, 0x0

    .line 4323
    goto :goto_0

    .line 4325
    :pswitch_1
    const/4 v3, 0x0

    .line 4326
    const/4 v1, 0x0

    .line 4327
    goto :goto_0

    .line 4329
    :pswitch_2
    const/4 v3, 0x0

    .line 4330
    const/4 v1, 0x0

    .line 4331
    goto :goto_0

    .line 4333
    :pswitch_3
    const/4 v3, 0x0

    .line 4334
    const/4 v1, 0x0

    .line 4335
    goto :goto_0

    .line 4337
    :pswitch_4
    const/4 v3, 0x0

    .line 4338
    const/4 v1, 0x0

    .line 4339
    goto :goto_0

    .line 4341
    :pswitch_5
    const/4 v3, 0x0

    .line 4342
    const/4 v1, 0x0

    .line 4343
    goto :goto_0

    .line 4345
    :pswitch_6
    const/16 v3, 0x55

    .line 4346
    const/16 v1, 0x55

    .line 4347
    goto :goto_0

    .line 4349
    :pswitch_7
    const/16 v3, 0x5d

    .line 4350
    const/16 v1, 0x5d

    .line 4351
    goto :goto_0

    .line 4353
    :pswitch_8
    const/16 v3, 0x67

    .line 4354
    const/16 v1, 0x67

    .line 4355
    goto :goto_0

    .line 4357
    :pswitch_9
    const/16 v3, 0x6d

    .line 4358
    const/16 v1, 0x6d

    .line 4359
    goto :goto_0

    .line 4361
    :pswitch_a
    const/16 v3, 0x73

    .line 4362
    const/16 v1, 0x73

    .line 4363
    goto :goto_0

    .line 4367
    :cond_0
    if-ne p1, v5, :cond_1

    .line 4369
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4371
    :pswitch_b
    const/4 v3, 0x0

    .line 4372
    const/4 v1, 0x0

    .line 4373
    goto :goto_0

    .line 4375
    :pswitch_c
    const/4 v3, 0x0

    .line 4376
    const/4 v1, 0x0

    .line 4377
    goto :goto_0

    .line 4379
    :pswitch_d
    const/4 v3, 0x0

    .line 4380
    const/4 v1, 0x0

    .line 4381
    goto :goto_0

    .line 4383
    :pswitch_e
    const/4 v3, 0x0

    .line 4384
    const/4 v1, 0x0

    .line 4385
    goto :goto_0

    .line 4387
    :pswitch_f
    const/4 v3, 0x0

    .line 4388
    const/4 v1, 0x0

    .line 4389
    goto :goto_0

    .line 4391
    :pswitch_10
    const/4 v3, 0x0

    .line 4392
    const/4 v1, 0x0

    .line 4393
    goto :goto_0

    .line 4395
    :pswitch_11
    const/16 v3, 0x49

    .line 4396
    const/16 v1, 0x49

    .line 4397
    goto :goto_0

    .line 4399
    :pswitch_12
    const/16 v3, 0x4f

    .line 4400
    const/16 v1, 0x4f

    .line 4401
    goto :goto_0

    .line 4403
    :pswitch_13
    const/16 v3, 0x55

    .line 4404
    const/16 v1, 0x55

    .line 4405
    goto :goto_0

    .line 4407
    :pswitch_14
    const/16 v3, 0x59

    .line 4408
    const/16 v1, 0x59

    .line 4409
    goto :goto_0

    .line 4411
    :pswitch_15
    const/16 v3, 0x5e

    .line 4412
    const/16 v1, 0x5e

    .line 4413
    goto :goto_0

    .line 4417
    :cond_1
    if-ne p1, v6, :cond_2

    .line 4419
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 4421
    :pswitch_16
    const/4 v3, 0x0

    .line 4422
    const/4 v1, 0x0

    .line 4423
    goto :goto_0

    .line 4425
    :pswitch_17
    const/4 v3, 0x0

    .line 4426
    const/4 v1, 0x0

    .line 4427
    goto :goto_0

    .line 4429
    :pswitch_18
    const/4 v3, 0x0

    .line 4430
    const/4 v1, 0x0

    .line 4431
    goto :goto_0

    .line 4433
    :pswitch_19
    const/4 v3, 0x0

    .line 4434
    const/4 v1, 0x0

    .line 4435
    goto :goto_0

    .line 4437
    :pswitch_1a
    const/4 v3, 0x0

    .line 4438
    const/4 v1, 0x0

    .line 4439
    goto :goto_0

    .line 4441
    :pswitch_1b
    const/4 v3, 0x0

    .line 4442
    const/4 v1, 0x0

    .line 4443
    goto :goto_0

    .line 4445
    :pswitch_1c
    const/4 v3, 0x0

    .line 4446
    const/4 v1, 0x0

    .line 4447
    goto :goto_0

    .line 4449
    :pswitch_1d
    const/4 v3, 0x0

    .line 4450
    const/4 v1, 0x0

    .line 4451
    goto :goto_0

    .line 4453
    :pswitch_1e
    const/4 v3, 0x0

    .line 4454
    const/4 v1, 0x0

    .line 4455
    goto/16 :goto_0

    .line 4457
    :pswitch_1f
    const/4 v3, 0x0

    .line 4458
    const/4 v1, 0x0

    .line 4459
    goto/16 :goto_0

    .line 4461
    :pswitch_20
    const/4 v3, 0x0

    .line 4462
    const/4 v1, 0x0

    .line 4463
    goto/16 :goto_0

    .line 4467
    :cond_2
    const/4 v3, -0x1

    .line 4468
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 4319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 4369
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 4419
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GG_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 904
    const/4 v3, 0x0

    .line 905
    .local v3, "min":I
    const/4 v1, 0x0

    .line 907
    .local v1, "max":I
    const/4 v0, 0x0

    .line 909
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 912
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 915
    if-nez p1, :cond_0

    .line 917
    packed-switch v0, :pswitch_data_0

    .line 1069
    :goto_0
    aput v1, v2, v4

    .line 1070
    aput v3, v2, v5

    .line 1072
    return-object v2

    .line 919
    :pswitch_0
    const/16 v3, 0xff

    .line 920
    const/16 v1, 0xff

    .line 921
    goto :goto_0

    .line 923
    :pswitch_1
    const/16 v3, 0xff

    .line 924
    const/16 v1, 0xff

    .line 925
    goto :goto_0

    .line 927
    :pswitch_2
    const/16 v3, 0xff

    .line 928
    const/16 v1, 0xff

    .line 929
    goto :goto_0

    .line 931
    :pswitch_3
    const/16 v3, 0xff

    .line 932
    const/16 v1, 0xff

    .line 933
    goto :goto_0

    .line 935
    :pswitch_4
    const/16 v3, 0xff

    .line 936
    const/16 v1, 0xff

    .line 937
    goto :goto_0

    .line 939
    :pswitch_5
    const/16 v3, 0xff

    .line 940
    const/16 v1, 0xff

    .line 941
    goto :goto_0

    .line 943
    :pswitch_6
    const/16 v3, 0xff

    .line 944
    const/16 v1, 0xff

    .line 945
    goto :goto_0

    .line 947
    :pswitch_7
    const/16 v3, 0xfe

    .line 948
    const/16 v1, 0xfe

    .line 949
    goto :goto_0

    .line 951
    :pswitch_8
    const/16 v3, 0xfe

    .line 952
    const/16 v1, 0xfe

    .line 953
    goto :goto_0

    .line 955
    :pswitch_9
    const/16 v3, 0xff

    .line 956
    const/16 v1, 0xff

    .line 957
    goto :goto_0

    .line 959
    :pswitch_a
    const/16 v3, 0xff

    .line 960
    const/16 v1, 0xff

    .line 961
    goto :goto_0

    .line 965
    :cond_0
    if-ne p1, v5, :cond_1

    .line 967
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 969
    :pswitch_b
    const/16 v3, 0xff

    .line 970
    const/16 v1, 0xff

    .line 971
    goto :goto_0

    .line 973
    :pswitch_c
    const/16 v3, 0xfe

    .line 974
    const/16 v1, 0xfe

    .line 975
    goto :goto_0

    .line 977
    :pswitch_d
    const/16 v3, 0xfe

    .line 978
    const/16 v1, 0xfe

    .line 979
    goto :goto_0

    .line 981
    :pswitch_e
    const/16 v3, 0xfe

    .line 982
    const/16 v1, 0xfe

    .line 983
    goto :goto_0

    .line 985
    :pswitch_f
    const/16 v3, 0xfe

    .line 986
    const/16 v1, 0xfe

    .line 987
    goto :goto_0

    .line 989
    :pswitch_10
    const/16 v3, 0xfe

    .line 990
    const/16 v1, 0xfe

    .line 991
    goto :goto_0

    .line 993
    :pswitch_11
    const/16 v3, 0xfe

    .line 994
    const/16 v1, 0xfe

    .line 995
    goto :goto_0

    .line 997
    :pswitch_12
    const/16 v3, 0xfe

    .line 998
    const/16 v1, 0xfe

    .line 999
    goto :goto_0

    .line 1001
    :pswitch_13
    const/16 v3, 0xfe

    .line 1002
    const/16 v1, 0xfe

    .line 1003
    goto :goto_0

    .line 1005
    :pswitch_14
    const/16 v3, 0xfe

    .line 1006
    const/16 v1, 0xfe

    .line 1007
    goto :goto_0

    .line 1009
    :pswitch_15
    const/16 v3, 0xfe

    .line 1010
    const/16 v1, 0xfe

    .line 1011
    goto :goto_0

    .line 1015
    :cond_1
    if-ne p1, v6, :cond_2

    .line 1017
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1019
    :pswitch_16
    const/16 v3, 0xff

    .line 1020
    const/16 v1, 0xff

    .line 1021
    goto/16 :goto_0

    .line 1023
    :pswitch_17
    const/16 v3, 0xff

    .line 1024
    const/16 v1, 0xff

    .line 1025
    goto/16 :goto_0

    .line 1027
    :pswitch_18
    const/16 v3, 0xff

    .line 1028
    const/16 v1, 0xff

    .line 1029
    goto/16 :goto_0

    .line 1031
    :pswitch_19
    const/16 v3, 0xff

    .line 1032
    const/16 v1, 0xff

    .line 1033
    goto/16 :goto_0

    .line 1035
    :pswitch_1a
    const/16 v3, 0xff

    .line 1036
    const/16 v1, 0xff

    .line 1037
    goto/16 :goto_0

    .line 1039
    :pswitch_1b
    const/16 v3, 0xff

    .line 1040
    const/16 v1, 0xff

    .line 1041
    goto/16 :goto_0

    .line 1043
    :pswitch_1c
    const/16 v3, 0xff

    .line 1044
    const/16 v1, 0xff

    .line 1045
    goto/16 :goto_0

    .line 1047
    :pswitch_1d
    const/16 v3, 0xff

    .line 1048
    const/16 v1, 0xff

    .line 1049
    goto/16 :goto_0

    .line 1051
    :pswitch_1e
    const/16 v3, 0xff

    .line 1052
    const/16 v1, 0xff

    .line 1053
    goto/16 :goto_0

    .line 1055
    :pswitch_1f
    const/16 v3, 0xff

    .line 1056
    const/16 v1, 0xff

    .line 1057
    goto/16 :goto_0

    .line 1059
    :pswitch_20
    const/16 v3, 0xff

    .line 1060
    const/16 v1, 0xff

    .line 1061
    goto/16 :goto_0

    .line 1065
    :cond_2
    const/4 v3, -0x1

    .line 1066
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 917
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 967
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 1017
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4134
    const/4 v3, 0x0

    .line 4135
    .local v3, "min":I
    const/4 v1, 0x0

    .line 4137
    .local v1, "max":I
    const/4 v0, 0x0

    .line 4139
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 4142
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 4145
    if-nez p1, :cond_0

    .line 4147
    packed-switch v0, :pswitch_data_0

    .line 4299
    :goto_0
    aput v1, v2, v4

    .line 4300
    aput v3, v2, v5

    .line 4302
    return-object v2

    .line 4149
    :pswitch_0
    const/16 v3, 0xff

    .line 4150
    const/16 v1, 0xff

    .line 4151
    goto :goto_0

    .line 4153
    :pswitch_1
    const/16 v3, 0xcc

    .line 4154
    const/16 v1, 0xd6

    .line 4155
    goto :goto_0

    .line 4157
    :pswitch_2
    const/16 v3, 0xcc

    .line 4158
    const/16 v1, 0xdd

    .line 4159
    goto :goto_0

    .line 4161
    :pswitch_3
    const/16 v3, 0xcc

    .line 4162
    const/16 v1, 0xe3

    .line 4163
    goto :goto_0

    .line 4165
    :pswitch_4
    const/16 v3, 0xcc

    .line 4166
    const/16 v1, 0xeb

    .line 4167
    goto :goto_0

    .line 4169
    :pswitch_5
    const/16 v3, 0xcc

    .line 4170
    const/16 v1, 0xf3

    .line 4171
    goto :goto_0

    .line 4173
    :pswitch_6
    const/16 v3, 0xff

    .line 4174
    const/16 v1, 0xff

    .line 4175
    goto :goto_0

    .line 4177
    :pswitch_7
    const/16 v3, 0xfe

    .line 4178
    const/16 v1, 0xfe

    .line 4179
    goto :goto_0

    .line 4181
    :pswitch_8
    const/16 v3, 0xfe

    .line 4182
    const/16 v1, 0xfe

    .line 4183
    goto :goto_0

    .line 4185
    :pswitch_9
    const/16 v3, 0xff

    .line 4186
    const/16 v1, 0xff

    .line 4187
    goto :goto_0

    .line 4189
    :pswitch_a
    const/16 v3, 0xff

    .line 4190
    const/16 v1, 0xff

    .line 4191
    goto :goto_0

    .line 4195
    :cond_0
    if-ne p1, v5, :cond_1

    .line 4197
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4199
    :pswitch_b
    const/16 v3, 0xff

    .line 4200
    const/16 v1, 0xff

    .line 4201
    goto :goto_0

    .line 4203
    :pswitch_c
    const/16 v3, 0xcc

    .line 4204
    const/16 v1, 0xdc

    .line 4205
    goto :goto_0

    .line 4207
    :pswitch_d
    const/16 v3, 0xcc

    .line 4208
    const/16 v1, 0xe5

    .line 4209
    goto :goto_0

    .line 4211
    :pswitch_e
    const/16 v3, 0xcc

    .line 4212
    const/16 v1, 0xef

    .line 4213
    goto :goto_0

    .line 4215
    :pswitch_f
    const/16 v3, 0xcc

    .line 4216
    const/16 v1, 0xfb

    .line 4217
    goto :goto_0

    .line 4219
    :pswitch_10
    const/16 v3, 0xcc

    .line 4220
    const/16 v1, 0xff

    .line 4221
    goto :goto_0

    .line 4223
    :pswitch_11
    const/16 v3, 0xfe

    .line 4224
    const/16 v1, 0xfe

    .line 4225
    goto :goto_0

    .line 4227
    :pswitch_12
    const/16 v3, 0xfe

    .line 4228
    const/16 v1, 0xfe

    .line 4229
    goto :goto_0

    .line 4231
    :pswitch_13
    const/16 v3, 0xfe

    .line 4232
    const/16 v1, 0xfe

    .line 4233
    goto :goto_0

    .line 4235
    :pswitch_14
    const/16 v3, 0xfe

    .line 4236
    const/16 v1, 0xfe

    .line 4237
    goto :goto_0

    .line 4239
    :pswitch_15
    const/16 v3, 0xfe

    .line 4240
    const/16 v1, 0xfe

    .line 4241
    goto :goto_0

    .line 4245
    :cond_1
    if-ne p1, v6, :cond_2

    .line 4247
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 4249
    :pswitch_16
    const/16 v3, 0xff

    .line 4250
    const/16 v1, 0xff

    .line 4251
    goto/16 :goto_0

    .line 4253
    :pswitch_17
    const/16 v3, 0xcc

    .line 4254
    const/16 v1, 0xd4

    .line 4255
    goto/16 :goto_0

    .line 4257
    :pswitch_18
    const/16 v3, 0xcc

    .line 4258
    const/16 v1, 0xd7

    .line 4259
    goto/16 :goto_0

    .line 4261
    :pswitch_19
    const/16 v3, 0xcc

    .line 4262
    const/16 v1, 0xd9

    .line 4263
    goto/16 :goto_0

    .line 4265
    :pswitch_1a
    const/16 v3, 0xcc

    .line 4266
    const/16 v1, 0xda

    .line 4267
    goto/16 :goto_0

    .line 4269
    :pswitch_1b
    const/16 v3, 0xcc

    .line 4270
    const/16 v1, 0xda

    .line 4271
    goto/16 :goto_0

    .line 4273
    :pswitch_1c
    const/16 v3, 0xff

    .line 4274
    const/16 v1, 0xff

    .line 4275
    goto/16 :goto_0

    .line 4277
    :pswitch_1d
    const/16 v3, 0xff

    .line 4278
    const/16 v1, 0xff

    .line 4279
    goto/16 :goto_0

    .line 4281
    :pswitch_1e
    const/16 v3, 0xff

    .line 4282
    const/16 v1, 0xff

    .line 4283
    goto/16 :goto_0

    .line 4285
    :pswitch_1f
    const/16 v3, 0xff

    .line 4286
    const/16 v1, 0xff

    .line 4287
    goto/16 :goto_0

    .line 4289
    :pswitch_20
    const/16 v3, 0xff

    .line 4290
    const/16 v1, 0xff

    .line 4291
    goto/16 :goto_0

    .line 4295
    :cond_2
    const/4 v3, -0x1

    .line 4296
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 4147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 4197
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 4247
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GR_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 732
    const/4 v3, 0x0

    .line 733
    .local v3, "min":I
    const/4 v1, 0x0

    .line 735
    .local v1, "max":I
    const/4 v0, 0x0

    .line 737
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 740
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 743
    if-nez p1, :cond_0

    .line 745
    packed-switch v0, :pswitch_data_0

    .line 897
    :goto_0
    aput v1, v2, v4

    .line 898
    aput v3, v2, v5

    .line 900
    return-object v2

    .line 747
    :pswitch_0
    const/4 v3, 0x0

    .line 748
    const/4 v1, 0x0

    .line 749
    goto :goto_0

    .line 751
    :pswitch_1
    const/4 v3, 0x1

    .line 752
    const/4 v1, 0x1

    .line 753
    goto :goto_0

    .line 755
    :pswitch_2
    const/4 v3, 0x1

    .line 756
    const/4 v1, 0x1

    .line 757
    goto :goto_0

    .line 759
    :pswitch_3
    const/4 v3, 0x1

    .line 760
    const/4 v1, 0x1

    .line 761
    goto :goto_0

    .line 763
    :pswitch_4
    const/4 v3, 0x1

    .line 764
    const/4 v1, 0x1

    .line 765
    goto :goto_0

    .line 767
    :pswitch_5
    const/4 v3, 0x1

    .line 768
    const/4 v1, 0x1

    .line 769
    goto :goto_0

    .line 771
    :pswitch_6
    const/4 v3, 0x1

    .line 772
    const/4 v1, 0x1

    .line 773
    goto :goto_0

    .line 775
    :pswitch_7
    const/4 v3, 0x1

    .line 776
    const/4 v1, 0x1

    .line 777
    goto :goto_0

    .line 779
    :pswitch_8
    const/4 v3, 0x1

    .line 780
    const/4 v1, 0x1

    .line 781
    goto :goto_0

    .line 783
    :pswitch_9
    const/4 v3, 0x1

    .line 784
    const/4 v1, 0x1

    .line 785
    goto :goto_0

    .line 787
    :pswitch_a
    const/4 v3, 0x1

    .line 788
    const/4 v1, 0x1

    .line 789
    goto :goto_0

    .line 793
    :cond_0
    if-ne p1, v5, :cond_1

    .line 795
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 797
    :pswitch_b
    const/4 v3, 0x0

    .line 798
    const/4 v1, 0x0

    .line 799
    goto :goto_0

    .line 801
    :pswitch_c
    const/4 v3, 0x1

    .line 802
    const/4 v1, 0x1

    .line 803
    goto :goto_0

    .line 805
    :pswitch_d
    const/4 v3, 0x0

    .line 806
    const/4 v1, 0x0

    .line 807
    goto :goto_0

    .line 809
    :pswitch_e
    const/4 v3, 0x0

    .line 810
    const/4 v1, 0x0

    .line 811
    goto :goto_0

    .line 813
    :pswitch_f
    const/4 v3, 0x0

    .line 814
    const/4 v1, 0x0

    .line 815
    goto :goto_0

    .line 817
    :pswitch_10
    const/4 v3, 0x0

    .line 818
    const/4 v1, 0x0

    .line 819
    goto :goto_0

    .line 821
    :pswitch_11
    const/4 v3, 0x0

    .line 822
    const/4 v1, 0x0

    .line 823
    goto :goto_0

    .line 825
    :pswitch_12
    const/4 v3, 0x1

    .line 826
    const/4 v1, 0x1

    .line 827
    goto :goto_0

    .line 829
    :pswitch_13
    const/4 v3, 0x0

    .line 830
    const/4 v1, 0x0

    .line 831
    goto :goto_0

    .line 833
    :pswitch_14
    const/4 v3, 0x0

    .line 834
    const/4 v1, 0x0

    .line 835
    goto :goto_0

    .line 837
    :pswitch_15
    const/4 v3, 0x0

    .line 838
    const/4 v1, 0x0

    .line 839
    goto :goto_0

    .line 843
    :cond_1
    if-ne p1, v6, :cond_2

    .line 845
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 847
    :pswitch_16
    const/4 v3, 0x0

    .line 848
    const/4 v1, 0x0

    .line 849
    goto :goto_0

    .line 851
    :pswitch_17
    const/4 v3, 0x0

    .line 852
    const/4 v1, 0x0

    .line 853
    goto :goto_0

    .line 855
    :pswitch_18
    const/4 v3, 0x0

    .line 856
    const/4 v1, 0x0

    .line 857
    goto :goto_0

    .line 859
    :pswitch_19
    const/4 v3, 0x0

    .line 860
    const/4 v1, 0x0

    .line 861
    goto :goto_0

    .line 863
    :pswitch_1a
    const/4 v3, 0x0

    .line 864
    const/4 v1, 0x0

    .line 865
    goto :goto_0

    .line 867
    :pswitch_1b
    const/16 v3, 0x15

    .line 868
    const/16 v1, 0x15

    .line 869
    goto :goto_0

    .line 871
    :pswitch_1c
    const/16 v3, 0x26

    .line 872
    const/16 v1, 0x26

    .line 873
    goto :goto_0

    .line 875
    :pswitch_1d
    const/16 v3, 0x33

    .line 876
    const/16 v1, 0x33

    .line 877
    goto :goto_0

    .line 879
    :pswitch_1e
    const/16 v3, 0x3f

    .line 880
    const/16 v1, 0x3f

    .line 881
    goto :goto_0

    .line 883
    :pswitch_1f
    const/16 v3, 0x49

    .line 884
    const/16 v1, 0x49

    .line 885
    goto :goto_0

    .line 887
    :pswitch_20
    const/16 v3, 0x51

    .line 888
    const/16 v1, 0x51

    .line 889
    goto :goto_0

    .line 893
    :cond_2
    const/4 v3, -0x1

    .line 894
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 745
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 795
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 845
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3962
    const/4 v3, 0x0

    .line 3963
    .local v3, "min":I
    const/4 v1, 0x0

    .line 3965
    .local v1, "max":I
    const/4 v0, 0x0

    .line 3967
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 3970
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 3973
    if-nez p1, :cond_0

    .line 3975
    packed-switch v0, :pswitch_data_0

    .line 4127
    :goto_0
    aput v1, v2, v4

    .line 4128
    aput v3, v2, v5

    .line 4130
    return-object v2

    .line 3977
    :pswitch_0
    const/4 v3, 0x0

    .line 3978
    const/4 v1, 0x0

    .line 3979
    goto :goto_0

    .line 3981
    :pswitch_1
    const/4 v3, 0x0

    .line 3982
    const/4 v1, 0x0

    .line 3983
    goto :goto_0

    .line 3985
    :pswitch_2
    const/4 v3, 0x0

    .line 3986
    const/4 v1, 0x0

    .line 3987
    goto :goto_0

    .line 3989
    :pswitch_3
    const/4 v3, 0x0

    .line 3990
    const/4 v1, 0x0

    .line 3991
    goto :goto_0

    .line 3993
    :pswitch_4
    const/4 v3, 0x0

    .line 3994
    const/4 v1, 0x0

    .line 3995
    goto :goto_0

    .line 3997
    :pswitch_5
    const/4 v3, 0x0

    .line 3998
    const/4 v1, 0x0

    .line 3999
    goto :goto_0

    .line 4001
    :pswitch_6
    const/4 v3, 0x1

    .line 4002
    const/4 v1, 0x1

    .line 4003
    goto :goto_0

    .line 4005
    :pswitch_7
    const/4 v3, 0x1

    .line 4006
    const/4 v1, 0x1

    .line 4007
    goto :goto_0

    .line 4009
    :pswitch_8
    const/4 v3, 0x1

    .line 4010
    const/4 v1, 0x1

    .line 4011
    goto :goto_0

    .line 4013
    :pswitch_9
    const/4 v3, 0x1

    .line 4014
    const/4 v1, 0x1

    .line 4015
    goto :goto_0

    .line 4017
    :pswitch_a
    const/4 v3, 0x1

    .line 4018
    const/4 v1, 0x1

    .line 4019
    goto :goto_0

    .line 4023
    :cond_0
    if-ne p1, v5, :cond_1

    .line 4025
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4027
    :pswitch_b
    const/4 v3, 0x0

    .line 4028
    const/4 v1, 0x0

    .line 4029
    goto :goto_0

    .line 4031
    :pswitch_c
    const/4 v3, 0x0

    .line 4032
    const/4 v1, 0x0

    .line 4033
    goto :goto_0

    .line 4035
    :pswitch_d
    const/4 v3, 0x0

    .line 4036
    const/4 v1, 0x0

    .line 4037
    goto :goto_0

    .line 4039
    :pswitch_e
    const/4 v3, 0x0

    .line 4040
    const/4 v1, 0x0

    .line 4041
    goto :goto_0

    .line 4043
    :pswitch_f
    const/4 v3, 0x0

    .line 4044
    const/4 v1, 0x0

    .line 4045
    goto :goto_0

    .line 4047
    :pswitch_10
    const/4 v3, 0x0

    .line 4048
    const/4 v1, 0x0

    .line 4049
    goto :goto_0

    .line 4051
    :pswitch_11
    const/4 v3, 0x0

    .line 4052
    const/4 v1, 0x0

    .line 4053
    goto :goto_0

    .line 4055
    :pswitch_12
    const/4 v3, 0x1

    .line 4056
    const/4 v1, 0x1

    .line 4057
    goto :goto_0

    .line 4059
    :pswitch_13
    const/4 v3, 0x0

    .line 4060
    const/4 v1, 0x0

    .line 4061
    goto :goto_0

    .line 4063
    :pswitch_14
    const/4 v3, 0x0

    .line 4064
    const/4 v1, 0x0

    .line 4065
    goto :goto_0

    .line 4067
    :pswitch_15
    const/4 v3, 0x0

    .line 4068
    const/4 v1, 0x0

    .line 4069
    goto :goto_0

    .line 4073
    :cond_1
    if-ne p1, v6, :cond_2

    .line 4075
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 4077
    :pswitch_16
    const/4 v3, 0x0

    .line 4078
    const/4 v1, 0x0

    .line 4079
    goto :goto_0

    .line 4081
    :pswitch_17
    const/4 v3, 0x0

    .line 4082
    const/4 v1, 0x0

    .line 4083
    goto :goto_0

    .line 4085
    :pswitch_18
    const/4 v3, 0x0

    .line 4086
    const/4 v1, 0x0

    .line 4087
    goto :goto_0

    .line 4089
    :pswitch_19
    const/4 v3, 0x0

    .line 4090
    const/4 v1, 0x0

    .line 4091
    goto :goto_0

    .line 4093
    :pswitch_1a
    const/4 v3, 0x0

    .line 4094
    const/4 v1, 0x0

    .line 4095
    goto :goto_0

    .line 4097
    :pswitch_1b
    const/4 v3, 0x0

    .line 4098
    const/4 v1, 0x0

    .line 4099
    goto :goto_0

    .line 4101
    :pswitch_1c
    const/16 v3, 0x26

    .line 4102
    const/16 v1, 0x26

    .line 4103
    goto :goto_0

    .line 4105
    :pswitch_1d
    const/16 v3, 0x33

    .line 4106
    const/16 v1, 0x33

    .line 4107
    goto :goto_0

    .line 4109
    :pswitch_1e
    const/16 v3, 0x3f

    .line 4110
    const/16 v1, 0x3f

    .line 4111
    goto :goto_0

    .line 4113
    :pswitch_1f
    const/16 v3, 0x49

    .line 4114
    const/16 v1, 0x49

    .line 4115
    goto :goto_0

    .line 4117
    :pswitch_20
    const/16 v3, 0x51

    .line 4118
    const/16 v1, 0x51

    .line 4119
    goto :goto_0

    .line 4123
    :cond_2
    const/4 v3, -0x1

    .line 4124
    const/4 v1, -0x1

    goto :goto_0

    .line 3975
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 4025
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 4075
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MB_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1592
    const/4 v3, 0x0

    .line 1593
    .local v3, "min":I
    const/4 v1, 0x0

    .line 1595
    .local v1, "max":I
    const/4 v0, 0x0

    .line 1597
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 1600
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 1603
    if-nez p1, :cond_0

    .line 1605
    packed-switch v0, :pswitch_data_0

    .line 1758
    :goto_0
    aput v1, v2, v4

    .line 1759
    aput v3, v2, v5

    .line 1761
    return-object v2

    .line 1607
    :pswitch_0
    const/16 v3, 0xff

    .line 1608
    const/16 v1, 0xff

    .line 1609
    goto :goto_0

    .line 1611
    :pswitch_1
    const/16 v3, 0xea

    .line 1612
    const/16 v1, 0xee

    .line 1613
    goto :goto_0

    .line 1615
    :pswitch_2
    const/16 v3, 0xda

    .line 1616
    const/16 v1, 0xe4

    .line 1617
    goto :goto_0

    .line 1619
    :pswitch_3
    const/16 v3, 0xcc

    .line 1620
    const/16 v1, 0xe2

    .line 1621
    goto :goto_0

    .line 1623
    :pswitch_4
    const/16 v3, 0xbe

    .line 1624
    const/16 v1, 0xe4

    .line 1625
    goto :goto_0

    .line 1627
    :pswitch_5
    const/16 v3, 0xb3

    .line 1628
    const/16 v1, 0xe4

    .line 1629
    goto :goto_0

    .line 1631
    :pswitch_6
    const/16 v3, 0xa9

    .line 1632
    const/16 v1, 0xea

    .line 1633
    goto :goto_0

    .line 1635
    :pswitch_7
    const/16 v3, 0xa1

    .line 1636
    const/16 v1, 0xf0

    .line 1637
    goto :goto_0

    .line 1639
    :pswitch_8
    const/16 v3, 0x98

    .line 1640
    const/16 v1, 0xf6

    .line 1641
    goto :goto_0

    .line 1644
    :pswitch_9
    const/16 v3, 0x90

    .line 1645
    const/16 v1, 0xfa

    .line 1646
    goto :goto_0

    .line 1648
    :pswitch_a
    const/16 v3, 0x8a

    .line 1649
    const/16 v1, 0xfc

    .line 1650
    goto :goto_0

    .line 1654
    :cond_0
    if-ne p1, v5, :cond_1

    .line 1656
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1658
    :pswitch_b
    const/16 v3, 0xff

    .line 1659
    const/16 v1, 0xff

    .line 1660
    goto :goto_0

    .line 1662
    :pswitch_c
    const/16 v3, 0xea

    .line 1663
    const/16 v1, 0xee

    .line 1664
    goto :goto_0

    .line 1666
    :pswitch_d
    const/16 v3, 0xda

    .line 1667
    const/16 v1, 0xe4

    .line 1668
    goto :goto_0

    .line 1670
    :pswitch_e
    const/16 v3, 0xcc

    .line 1671
    const/16 v1, 0xe2

    .line 1672
    goto :goto_0

    .line 1674
    :pswitch_f
    const/16 v3, 0xbe

    .line 1675
    const/16 v1, 0xe4

    .line 1676
    goto :goto_0

    .line 1678
    :pswitch_10
    const/16 v3, 0xb3

    .line 1679
    const/16 v1, 0xe4

    .line 1680
    goto :goto_0

    .line 1682
    :pswitch_11
    const/16 v3, 0xa9

    .line 1683
    const/16 v1, 0xea

    .line 1684
    goto :goto_0

    .line 1686
    :pswitch_12
    const/16 v3, 0xa1

    .line 1687
    const/16 v1, 0xf0

    .line 1688
    goto :goto_0

    .line 1690
    :pswitch_13
    const/16 v3, 0x98

    .line 1691
    const/16 v1, 0xf6

    .line 1692
    goto :goto_0

    .line 1694
    :pswitch_14
    const/16 v3, 0x90

    .line 1695
    const/16 v1, 0xfa

    .line 1696
    goto :goto_0

    .line 1698
    :pswitch_15
    const/16 v3, 0x8a

    .line 1699
    const/16 v1, 0xfc

    .line 1700
    goto :goto_0

    .line 1704
    :cond_1
    if-ne p1, v6, :cond_2

    .line 1706
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1708
    :pswitch_16
    const/16 v3, 0xff

    .line 1709
    const/16 v1, 0xff

    .line 1710
    goto/16 :goto_0

    .line 1712
    :pswitch_17
    const/16 v3, 0xff

    .line 1713
    const/16 v1, 0xff

    .line 1714
    goto/16 :goto_0

    .line 1716
    :pswitch_18
    const/16 v3, 0xff

    .line 1717
    const/16 v1, 0xff

    .line 1718
    goto/16 :goto_0

    .line 1720
    :pswitch_19
    const/16 v3, 0xff

    .line 1721
    const/16 v1, 0xff

    .line 1722
    goto/16 :goto_0

    .line 1724
    :pswitch_1a
    const/16 v3, 0xff

    .line 1725
    const/16 v1, 0xff

    .line 1726
    goto/16 :goto_0

    .line 1728
    :pswitch_1b
    const/16 v3, 0xff

    .line 1729
    const/16 v1, 0xff

    .line 1730
    goto/16 :goto_0

    .line 1732
    :pswitch_1c
    const/16 v3, 0xff

    .line 1733
    const/16 v1, 0xff

    .line 1734
    goto/16 :goto_0

    .line 1736
    :pswitch_1d
    const/16 v3, 0xff

    .line 1737
    const/16 v1, 0xff

    .line 1738
    goto/16 :goto_0

    .line 1740
    :pswitch_1e
    const/16 v3, 0xff

    .line 1741
    const/16 v1, 0xff

    .line 1742
    goto/16 :goto_0

    .line 1744
    :pswitch_1f
    const/16 v3, 0xff

    .line 1745
    const/16 v1, 0xff

    .line 1746
    goto/16 :goto_0

    .line 1748
    :pswitch_20
    const/16 v3, 0xff

    .line 1749
    const/16 v1, 0xff

    .line 1750
    goto/16 :goto_0

    .line 1754
    :cond_2
    const/4 v3, -0x1

    .line 1755
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1605
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1656
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 1706
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4822
    const/4 v3, 0x0

    .line 4823
    .local v3, "min":I
    const/4 v1, 0x0

    .line 4825
    .local v1, "max":I
    const/4 v0, 0x0

    .line 4827
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 4830
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 4833
    if-nez p1, :cond_0

    .line 4835
    packed-switch v0, :pswitch_data_0

    .line 4988
    :goto_0
    aput v1, v2, v4

    .line 4989
    aput v3, v2, v5

    .line 4991
    return-object v2

    .line 4837
    :pswitch_0
    const/16 v3, 0xff

    .line 4838
    const/16 v1, 0xff

    .line 4839
    goto :goto_0

    .line 4841
    :pswitch_1
    const/16 v3, 0xcc

    .line 4842
    const/16 v1, 0xcb

    .line 4843
    goto :goto_0

    .line 4845
    :pswitch_2
    const/16 v3, 0xcc

    .line 4846
    const/16 v1, 0xcb

    .line 4847
    goto :goto_0

    .line 4849
    :pswitch_3
    const/16 v3, 0xcc

    .line 4850
    const/16 v1, 0xcb

    .line 4851
    goto :goto_0

    .line 4853
    :pswitch_4
    const/16 v3, 0xcc

    .line 4854
    const/16 v1, 0xcb

    .line 4855
    goto :goto_0

    .line 4857
    :pswitch_5
    const/16 v3, 0xcc

    .line 4858
    const/16 v1, 0xcb

    .line 4859
    goto :goto_0

    .line 4861
    :pswitch_6
    const/16 v3, 0xa9

    .line 4862
    const/16 v1, 0xea

    .line 4863
    goto :goto_0

    .line 4865
    :pswitch_7
    const/16 v3, 0xa1

    .line 4866
    const/16 v1, 0xf0

    .line 4867
    goto :goto_0

    .line 4869
    :pswitch_8
    const/16 v3, 0x98

    .line 4870
    const/16 v1, 0xf6

    .line 4871
    goto :goto_0

    .line 4874
    :pswitch_9
    const/16 v3, 0x90

    .line 4875
    const/16 v1, 0xfa

    .line 4876
    goto :goto_0

    .line 4878
    :pswitch_a
    const/16 v3, 0x8a

    .line 4879
    const/16 v1, 0xfc

    .line 4880
    goto :goto_0

    .line 4884
    :cond_0
    if-ne p1, v5, :cond_1

    .line 4886
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4888
    :pswitch_b
    const/16 v3, 0xff

    .line 4889
    const/16 v1, 0xff

    .line 4890
    goto :goto_0

    .line 4892
    :pswitch_c
    const/16 v3, 0xcc

    .line 4893
    const/16 v1, 0xcd

    .line 4894
    goto :goto_0

    .line 4896
    :pswitch_d
    const/16 v3, 0xcc

    .line 4897
    const/16 v1, 0xce

    .line 4898
    goto :goto_0

    .line 4900
    :pswitch_e
    const/16 v3, 0xcc

    .line 4901
    const/16 v1, 0xcf

    .line 4902
    goto :goto_0

    .line 4904
    :pswitch_f
    const/16 v3, 0xcc

    .line 4905
    const/16 v1, 0xd1

    .line 4906
    goto :goto_0

    .line 4908
    :pswitch_10
    const/16 v3, 0xcc

    .line 4909
    const/16 v1, 0xd2

    .line 4910
    goto :goto_0

    .line 4912
    :pswitch_11
    const/16 v3, 0xa9

    .line 4913
    const/16 v1, 0xea

    .line 4914
    goto :goto_0

    .line 4916
    :pswitch_12
    const/16 v3, 0xa1

    .line 4917
    const/16 v1, 0xf0

    .line 4918
    goto :goto_0

    .line 4920
    :pswitch_13
    const/16 v3, 0x98

    .line 4921
    const/16 v1, 0xf6

    .line 4922
    goto :goto_0

    .line 4924
    :pswitch_14
    const/16 v3, 0x90

    .line 4925
    const/16 v1, 0xfa

    .line 4926
    goto :goto_0

    .line 4928
    :pswitch_15
    const/16 v3, 0x8a

    .line 4929
    const/16 v1, 0xfc

    .line 4930
    goto :goto_0

    .line 4934
    :cond_1
    if-ne p1, v6, :cond_2

    .line 4936
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 4938
    :pswitch_16
    const/16 v3, 0xff

    .line 4939
    const/16 v1, 0xff

    .line 4940
    goto/16 :goto_0

    .line 4942
    :pswitch_17
    const/16 v3, 0xcc

    .line 4943
    const/16 v1, 0xd8

    .line 4944
    goto/16 :goto_0

    .line 4946
    :pswitch_18
    const/16 v3, 0xcc

    .line 4947
    const/16 v1, 0xde

    .line 4948
    goto/16 :goto_0

    .line 4950
    :pswitch_19
    const/16 v3, 0xcc

    .line 4951
    const/16 v1, 0xe4

    .line 4952
    goto/16 :goto_0

    .line 4954
    :pswitch_1a
    const/16 v3, 0xcc

    .line 4955
    const/16 v1, 0xeb

    .line 4956
    goto/16 :goto_0

    .line 4958
    :pswitch_1b
    const/16 v3, 0xcc

    .line 4959
    const/16 v1, 0xf1

    .line 4960
    goto/16 :goto_0

    .line 4962
    :pswitch_1c
    const/16 v3, 0xff

    .line 4963
    const/16 v1, 0xff

    .line 4964
    goto/16 :goto_0

    .line 4966
    :pswitch_1d
    const/16 v3, 0xff

    .line 4967
    const/16 v1, 0xff

    .line 4968
    goto/16 :goto_0

    .line 4970
    :pswitch_1e
    const/16 v3, 0xff

    .line 4971
    const/16 v1, 0xff

    .line 4972
    goto/16 :goto_0

    .line 4974
    :pswitch_1f
    const/16 v3, 0xff

    .line 4975
    const/16 v1, 0xff

    .line 4976
    goto/16 :goto_0

    .line 4978
    :pswitch_20
    const/16 v3, 0xff

    .line 4979
    const/16 v1, 0xff

    .line 4980
    goto/16 :goto_0

    .line 4984
    :cond_2
    const/4 v3, -0x1

    .line 4985
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 4835
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 4886
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 4936
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MG_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1420
    const/4 v3, 0x0

    .line 1421
    .local v3, "min":I
    const/4 v1, 0x0

    .line 1423
    .local v1, "max":I
    const/4 v0, 0x0

    .line 1425
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 1428
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 1431
    if-nez p1, :cond_0

    .line 1433
    packed-switch v0, :pswitch_data_0

    .line 1585
    :goto_0
    aput v1, v2, v4

    .line 1586
    aput v3, v2, v5

    .line 1588
    return-object v2

    .line 1435
    :pswitch_0
    const/4 v3, 0x0

    .line 1436
    const/4 v1, 0x0

    .line 1437
    goto :goto_0

    .line 1439
    :pswitch_1
    const/4 v3, 0x0

    .line 1440
    const/4 v1, 0x0

    .line 1441
    goto :goto_0

    .line 1443
    :pswitch_2
    const/4 v3, 0x0

    .line 1444
    const/4 v1, 0x0

    .line 1445
    goto :goto_0

    .line 1447
    :pswitch_3
    const/4 v3, 0x0

    .line 1448
    const/4 v1, 0x0

    .line 1449
    goto :goto_0

    .line 1451
    :pswitch_4
    const/4 v3, 0x0

    .line 1452
    const/4 v1, 0x0

    .line 1453
    goto :goto_0

    .line 1455
    :pswitch_5
    const/4 v3, 0x0

    .line 1456
    const/4 v1, 0x0

    .line 1457
    goto :goto_0

    .line 1459
    :pswitch_6
    const/4 v3, 0x0

    .line 1460
    const/4 v1, 0x0

    .line 1461
    goto :goto_0

    .line 1463
    :pswitch_7
    const/4 v3, 0x1

    .line 1464
    const/4 v1, 0x0

    .line 1465
    goto :goto_0

    .line 1467
    :pswitch_8
    const/4 v3, 0x1

    .line 1468
    const/4 v1, 0x0

    .line 1469
    goto :goto_0

    .line 1471
    :pswitch_9
    const/4 v3, 0x0

    .line 1472
    const/4 v1, 0x0

    .line 1473
    goto :goto_0

    .line 1475
    :pswitch_a
    const/4 v3, 0x0

    .line 1476
    const/4 v1, 0x0

    .line 1477
    goto :goto_0

    .line 1481
    :cond_0
    if-ne p1, v5, :cond_1

    .line 1483
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1485
    :pswitch_b
    const/4 v3, 0x0

    .line 1486
    const/4 v1, 0x0

    .line 1487
    goto :goto_0

    .line 1489
    :pswitch_c
    const/4 v3, 0x1

    .line 1490
    const/4 v1, 0x1

    .line 1491
    goto :goto_0

    .line 1493
    :pswitch_d
    const/4 v3, 0x1

    .line 1494
    const/4 v1, 0x1

    .line 1495
    goto :goto_0

    .line 1497
    :pswitch_e
    const/4 v3, 0x1

    .line 1498
    const/4 v1, 0x1

    .line 1499
    goto :goto_0

    .line 1501
    :pswitch_f
    const/4 v3, 0x1

    .line 1502
    const/4 v1, 0x1

    .line 1503
    goto :goto_0

    .line 1505
    :pswitch_10
    const/4 v3, 0x1

    .line 1506
    const/4 v1, 0x1

    .line 1507
    goto :goto_0

    .line 1509
    :pswitch_11
    const/4 v3, 0x1

    .line 1510
    const/4 v1, 0x1

    .line 1511
    goto :goto_0

    .line 1513
    :pswitch_12
    const/4 v3, 0x1

    .line 1514
    const/4 v1, 0x1

    .line 1515
    goto :goto_0

    .line 1517
    :pswitch_13
    const/4 v3, 0x1

    .line 1518
    const/4 v1, 0x1

    .line 1519
    goto :goto_0

    .line 1521
    :pswitch_14
    const/4 v3, 0x1

    .line 1522
    const/4 v1, 0x1

    .line 1523
    goto :goto_0

    .line 1525
    :pswitch_15
    const/4 v3, 0x1

    .line 1526
    const/4 v1, 0x1

    .line 1527
    goto :goto_0

    .line 1531
    :cond_1
    if-ne p1, v6, :cond_2

    .line 1533
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1535
    :pswitch_16
    const/4 v3, 0x0

    .line 1536
    const/4 v1, 0x0

    .line 1537
    goto :goto_0

    .line 1539
    :pswitch_17
    const/4 v3, 0x0

    .line 1540
    const/4 v1, 0x5

    .line 1541
    goto :goto_0

    .line 1543
    :pswitch_18
    const/4 v3, 0x0

    .line 1544
    const/16 v1, 0xb

    .line 1545
    goto :goto_0

    .line 1547
    :pswitch_19
    const/4 v3, 0x0

    .line 1548
    const/16 v1, 0xd

    .line 1549
    goto :goto_0

    .line 1551
    :pswitch_1a
    const/4 v3, 0x0

    .line 1552
    const/16 v1, 0xa

    .line 1553
    goto :goto_0

    .line 1555
    :pswitch_1b
    const/4 v3, 0x0

    .line 1556
    const/4 v1, 0x4

    .line 1557
    goto :goto_0

    .line 1559
    :pswitch_1c
    const/4 v3, 0x0

    .line 1560
    const/4 v1, 0x0

    .line 1561
    goto :goto_0

    .line 1563
    :pswitch_1d
    const/4 v3, 0x0

    .line 1564
    const/4 v1, 0x0

    .line 1565
    goto :goto_0

    .line 1567
    :pswitch_1e
    const/4 v3, 0x0

    .line 1568
    const/4 v1, 0x0

    .line 1569
    goto :goto_0

    .line 1571
    :pswitch_1f
    const/4 v3, 0x0

    .line 1572
    const/4 v1, 0x0

    .line 1573
    goto :goto_0

    .line 1575
    :pswitch_20
    const/4 v3, 0x0

    .line 1576
    const/4 v1, 0x0

    .line 1577
    goto :goto_0

    .line 1581
    :cond_2
    const/4 v3, -0x1

    .line 1582
    const/4 v1, -0x1

    goto :goto_0

    .line 1433
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1483
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 1533
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4650
    const/4 v3, 0x0

    .line 4651
    .local v3, "min":I
    const/4 v1, 0x0

    .line 4653
    .local v1, "max":I
    const/4 v0, 0x0

    .line 4655
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 4658
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 4661
    if-nez p1, :cond_0

    .line 4663
    packed-switch v0, :pswitch_data_0

    .line 4815
    :goto_0
    aput v1, v2, v4

    .line 4816
    aput v3, v2, v5

    .line 4818
    return-object v2

    .line 4665
    :pswitch_0
    const/4 v3, 0x0

    .line 4666
    const/4 v1, 0x0

    .line 4667
    goto :goto_0

    .line 4669
    :pswitch_1
    const/4 v3, 0x0

    .line 4670
    const/4 v1, 0x0

    .line 4671
    goto :goto_0

    .line 4673
    :pswitch_2
    const/4 v3, 0x0

    .line 4674
    const/4 v1, 0x0

    .line 4675
    goto :goto_0

    .line 4677
    :pswitch_3
    const/4 v3, 0x0

    .line 4678
    const/4 v1, 0x0

    .line 4679
    goto :goto_0

    .line 4681
    :pswitch_4
    const/4 v3, 0x0

    .line 4682
    const/4 v1, 0x0

    .line 4683
    goto :goto_0

    .line 4685
    :pswitch_5
    const/4 v3, 0x0

    .line 4686
    const/4 v1, 0x0

    .line 4687
    goto :goto_0

    .line 4689
    :pswitch_6
    const/4 v3, 0x0

    .line 4690
    const/4 v1, 0x0

    .line 4691
    goto :goto_0

    .line 4693
    :pswitch_7
    const/4 v3, 0x1

    .line 4694
    const/4 v1, 0x0

    .line 4695
    goto :goto_0

    .line 4697
    :pswitch_8
    const/4 v3, 0x1

    .line 4698
    const/4 v1, 0x0

    .line 4699
    goto :goto_0

    .line 4701
    :pswitch_9
    const/4 v3, 0x0

    .line 4702
    const/4 v1, 0x0

    .line 4703
    goto :goto_0

    .line 4705
    :pswitch_a
    const/4 v3, 0x0

    .line 4706
    const/4 v1, 0x0

    .line 4707
    goto :goto_0

    .line 4711
    :cond_0
    if-ne p1, v5, :cond_1

    .line 4713
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4715
    :pswitch_b
    const/4 v3, 0x0

    .line 4716
    const/4 v1, 0x0

    .line 4717
    goto :goto_0

    .line 4719
    :pswitch_c
    const/4 v3, 0x0

    .line 4720
    const/4 v1, 0x0

    .line 4721
    goto :goto_0

    .line 4723
    :pswitch_d
    const/4 v3, 0x0

    .line 4724
    const/4 v1, 0x0

    .line 4725
    goto :goto_0

    .line 4727
    :pswitch_e
    const/4 v3, 0x0

    .line 4728
    const/4 v1, 0x0

    .line 4729
    goto :goto_0

    .line 4731
    :pswitch_f
    const/4 v3, 0x0

    .line 4732
    const/4 v1, 0x0

    .line 4733
    goto :goto_0

    .line 4735
    :pswitch_10
    const/4 v3, 0x0

    .line 4736
    const/4 v1, 0x0

    .line 4737
    goto :goto_0

    .line 4739
    :pswitch_11
    const/4 v3, 0x1

    .line 4740
    const/4 v1, 0x1

    .line 4741
    goto :goto_0

    .line 4743
    :pswitch_12
    const/4 v3, 0x1

    .line 4744
    const/4 v1, 0x1

    .line 4745
    goto :goto_0

    .line 4747
    :pswitch_13
    const/4 v3, 0x1

    .line 4748
    const/4 v1, 0x1

    .line 4749
    goto :goto_0

    .line 4751
    :pswitch_14
    const/4 v3, 0x1

    .line 4752
    const/4 v1, 0x1

    .line 4753
    goto :goto_0

    .line 4755
    :pswitch_15
    const/4 v3, 0x1

    .line 4756
    const/4 v1, 0x1

    .line 4757
    goto :goto_0

    .line 4761
    :cond_1
    if-ne p1, v6, :cond_2

    .line 4763
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 4765
    :pswitch_16
    const/4 v3, 0x0

    .line 4766
    const/4 v1, 0x0

    .line 4767
    goto :goto_0

    .line 4769
    :pswitch_17
    const/4 v3, 0x0

    .line 4770
    const/4 v1, 0x0

    .line 4771
    goto :goto_0

    .line 4773
    :pswitch_18
    const/4 v3, 0x0

    .line 4774
    const/4 v1, 0x0

    .line 4775
    goto :goto_0

    .line 4777
    :pswitch_19
    const/4 v3, 0x0

    .line 4778
    const/4 v1, 0x0

    .line 4779
    goto :goto_0

    .line 4781
    :pswitch_1a
    const/4 v3, 0x0

    .line 4782
    const/4 v1, 0x0

    .line 4783
    goto :goto_0

    .line 4785
    :pswitch_1b
    const/4 v3, 0x0

    .line 4786
    const/4 v1, 0x0

    .line 4787
    goto :goto_0

    .line 4789
    :pswitch_1c
    const/4 v3, 0x0

    .line 4790
    const/4 v1, 0x0

    .line 4791
    goto :goto_0

    .line 4793
    :pswitch_1d
    const/4 v3, 0x0

    .line 4794
    const/4 v1, 0x0

    .line 4795
    goto :goto_0

    .line 4797
    :pswitch_1e
    const/4 v3, 0x0

    .line 4798
    const/4 v1, 0x0

    .line 4799
    goto :goto_0

    .line 4801
    :pswitch_1f
    const/4 v3, 0x0

    .line 4802
    const/4 v1, 0x0

    .line 4803
    goto :goto_0

    .line 4805
    :pswitch_20
    const/4 v3, 0x0

    .line 4806
    const/4 v1, 0x0

    .line 4807
    goto :goto_0

    .line 4811
    :cond_2
    const/4 v3, -0x1

    .line 4812
    const/4 v1, -0x1

    goto :goto_0

    .line 4663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 4713
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 4763
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MR_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1248
    const/4 v3, 0x0

    .line 1249
    .local v3, "min":I
    const/4 v1, 0x0

    .line 1251
    .local v1, "max":I
    const/4 v0, 0x0

    .line 1253
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 1256
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 1259
    if-nez p1, :cond_0

    .line 1261
    packed-switch v0, :pswitch_data_0

    .line 1413
    :goto_0
    aput v1, v2, v4

    .line 1414
    aput v3, v2, v5

    .line 1416
    return-object v2

    .line 1263
    :pswitch_0
    const/16 v3, 0xff

    .line 1264
    const/16 v1, 0xff

    .line 1265
    goto :goto_0

    .line 1267
    :pswitch_1
    const/16 v3, 0xfe

    .line 1268
    const/16 v1, 0xfe

    .line 1269
    goto :goto_0

    .line 1271
    :pswitch_2
    const/16 v3, 0xfe

    .line 1272
    const/16 v1, 0xfe

    .line 1273
    goto :goto_0

    .line 1275
    :pswitch_3
    const/16 v3, 0xfe

    .line 1276
    const/16 v1, 0xfe

    .line 1277
    goto :goto_0

    .line 1279
    :pswitch_4
    const/16 v3, 0xfe

    .line 1280
    const/16 v1, 0xfe

    .line 1281
    goto :goto_0

    .line 1283
    :pswitch_5
    const/16 v3, 0xfe

    .line 1284
    const/16 v1, 0xfe

    .line 1285
    goto :goto_0

    .line 1287
    :pswitch_6
    const/16 v3, 0xfe

    .line 1288
    const/16 v1, 0xfe

    .line 1289
    goto :goto_0

    .line 1291
    :pswitch_7
    const/16 v3, 0xfe

    .line 1292
    const/16 v1, 0xfe

    .line 1293
    goto :goto_0

    .line 1295
    :pswitch_8
    const/16 v3, 0xfe

    .line 1296
    const/16 v1, 0xfe

    .line 1297
    goto :goto_0

    .line 1299
    :pswitch_9
    const/16 v3, 0xfe

    .line 1300
    const/16 v1, 0xfe

    .line 1301
    goto :goto_0

    .line 1303
    :pswitch_a
    const/16 v3, 0xfe

    .line 1304
    const/16 v1, 0xfe

    .line 1305
    goto :goto_0

    .line 1309
    :cond_0
    if-ne p1, v5, :cond_1

    .line 1311
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1313
    :pswitch_b
    const/16 v3, 0xff

    .line 1314
    const/16 v1, 0xff

    .line 1315
    goto :goto_0

    .line 1317
    :pswitch_c
    const/16 v3, 0xff

    .line 1318
    const/16 v1, 0xfe

    .line 1319
    goto :goto_0

    .line 1321
    :pswitch_d
    const/16 v3, 0xff

    .line 1322
    const/16 v1, 0xff

    .line 1323
    goto :goto_0

    .line 1325
    :pswitch_e
    const/16 v3, 0xff

    .line 1326
    const/16 v1, 0xff

    .line 1327
    goto :goto_0

    .line 1329
    :pswitch_f
    const/16 v3, 0xff

    .line 1330
    const/16 v1, 0xff

    .line 1331
    goto :goto_0

    .line 1333
    :pswitch_10
    const/16 v3, 0xff

    .line 1334
    const/16 v1, 0xff

    .line 1335
    goto :goto_0

    .line 1337
    :pswitch_11
    const/16 v3, 0xff

    .line 1338
    const/16 v1, 0xff

    .line 1339
    goto :goto_0

    .line 1341
    :pswitch_12
    const/16 v3, 0xff

    .line 1342
    const/16 v1, 0xff

    .line 1343
    goto :goto_0

    .line 1345
    :pswitch_13
    const/16 v3, 0xff

    .line 1346
    const/16 v1, 0xff

    .line 1347
    goto :goto_0

    .line 1349
    :pswitch_14
    const/16 v3, 0xff

    .line 1350
    const/16 v1, 0xff

    .line 1351
    goto :goto_0

    .line 1353
    :pswitch_15
    const/16 v3, 0xff

    .line 1354
    const/16 v1, 0xff

    .line 1355
    goto :goto_0

    .line 1359
    :cond_1
    if-ne p1, v6, :cond_2

    .line 1361
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1363
    :pswitch_16
    const/16 v3, 0xff

    .line 1364
    const/16 v1, 0xff

    .line 1365
    goto/16 :goto_0

    .line 1367
    :pswitch_17
    const/16 v3, 0xff

    .line 1368
    const/16 v1, 0xff

    .line 1369
    goto/16 :goto_0

    .line 1371
    :pswitch_18
    const/16 v3, 0xff

    .line 1372
    const/16 v1, 0xff

    .line 1373
    goto/16 :goto_0

    .line 1375
    :pswitch_19
    const/16 v3, 0xff

    .line 1376
    const/16 v1, 0xff

    .line 1377
    goto/16 :goto_0

    .line 1379
    :pswitch_1a
    const/16 v3, 0xff

    .line 1380
    const/16 v1, 0xff

    .line 1381
    goto/16 :goto_0

    .line 1383
    :pswitch_1b
    const/16 v3, 0xff

    .line 1384
    const/16 v1, 0xff

    .line 1385
    goto/16 :goto_0

    .line 1387
    :pswitch_1c
    const/16 v3, 0xff

    .line 1388
    const/16 v1, 0xff

    .line 1389
    goto/16 :goto_0

    .line 1391
    :pswitch_1d
    const/16 v3, 0xf0

    .line 1392
    const/16 v1, 0xf0

    .line 1393
    goto/16 :goto_0

    .line 1395
    :pswitch_1e
    const/16 v3, 0xdf

    .line 1396
    const/16 v1, 0xdf

    .line 1397
    goto/16 :goto_0

    .line 1399
    :pswitch_1f
    const/16 v3, 0xcc

    .line 1400
    const/16 v1, 0xcc

    .line 1401
    goto/16 :goto_0

    .line 1403
    :pswitch_20
    const/16 v3, 0xb6

    .line 1404
    const/16 v1, 0xb6

    .line 1405
    goto/16 :goto_0

    .line 1409
    :cond_2
    const/4 v3, -0x1

    .line 1410
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1311
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 1361
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4478
    const/4 v3, 0x0

    .line 4479
    .local v3, "min":I
    const/4 v1, 0x0

    .line 4481
    .local v1, "max":I
    const/4 v0, 0x0

    .line 4483
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 4486
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 4489
    if-nez p1, :cond_0

    .line 4491
    packed-switch v0, :pswitch_data_0

    .line 4643
    :goto_0
    aput v1, v2, v4

    .line 4644
    aput v3, v2, v5

    .line 4646
    return-object v2

    .line 4493
    :pswitch_0
    const/16 v3, 0xff

    .line 4494
    const/16 v1, 0xff

    .line 4495
    goto :goto_0

    .line 4497
    :pswitch_1
    const/16 v3, 0xcc

    .line 4498
    const/16 v1, 0xf9

    .line 4499
    goto :goto_0

    .line 4501
    :pswitch_2
    const/16 v3, 0xcc

    .line 4502
    const/16 v1, 0xff

    .line 4503
    goto :goto_0

    .line 4505
    :pswitch_3
    const/16 v3, 0xcc

    .line 4506
    const/16 v1, 0xff

    .line 4507
    goto :goto_0

    .line 4509
    :pswitch_4
    const/16 v3, 0xcc

    .line 4510
    const/16 v1, 0xff

    .line 4511
    goto :goto_0

    .line 4513
    :pswitch_5
    const/16 v3, 0xcc

    .line 4514
    const/16 v1, 0xff

    .line 4515
    goto :goto_0

    .line 4517
    :pswitch_6
    const/16 v3, 0xfe

    .line 4518
    const/16 v1, 0xfe

    .line 4519
    goto :goto_0

    .line 4521
    :pswitch_7
    const/16 v3, 0xfe

    .line 4522
    const/16 v1, 0xfe

    .line 4523
    goto :goto_0

    .line 4525
    :pswitch_8
    const/16 v3, 0xfe

    .line 4526
    const/16 v1, 0xfe

    .line 4527
    goto :goto_0

    .line 4529
    :pswitch_9
    const/16 v3, 0xfe

    .line 4530
    const/16 v1, 0xfe

    .line 4531
    goto :goto_0

    .line 4533
    :pswitch_a
    const/16 v3, 0xfe

    .line 4534
    const/16 v1, 0xfe

    .line 4535
    goto :goto_0

    .line 4539
    :cond_0
    if-ne p1, v5, :cond_1

    .line 4541
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4543
    :pswitch_b
    const/16 v3, 0xff

    .line 4544
    const/16 v1, 0xff

    .line 4545
    goto :goto_0

    .line 4547
    :pswitch_c
    const/16 v3, 0xcc

    .line 4548
    const/16 v1, 0xfa

    .line 4549
    goto :goto_0

    .line 4551
    :pswitch_d
    const/16 v3, 0xcc

    .line 4552
    const/16 v1, 0xff

    .line 4553
    goto :goto_0

    .line 4555
    :pswitch_e
    const/16 v3, 0xcc

    .line 4556
    const/16 v1, 0xff

    .line 4557
    goto :goto_0

    .line 4559
    :pswitch_f
    const/16 v3, 0xcc

    .line 4560
    const/16 v1, 0xff

    .line 4561
    goto :goto_0

    .line 4563
    :pswitch_10
    const/16 v3, 0xcc

    .line 4564
    const/16 v1, 0xff

    .line 4565
    goto :goto_0

    .line 4567
    :pswitch_11
    const/16 v3, 0xff

    .line 4568
    const/16 v1, 0xff

    .line 4569
    goto :goto_0

    .line 4571
    :pswitch_12
    const/16 v3, 0xff

    .line 4572
    const/16 v1, 0xff

    .line 4573
    goto :goto_0

    .line 4575
    :pswitch_13
    const/16 v3, 0xff

    .line 4576
    const/16 v1, 0xff

    .line 4577
    goto :goto_0

    .line 4579
    :pswitch_14
    const/16 v3, 0xff

    .line 4580
    const/16 v1, 0xff

    .line 4581
    goto :goto_0

    .line 4583
    :pswitch_15
    const/16 v3, 0xff

    .line 4584
    const/16 v1, 0xff

    .line 4585
    goto :goto_0

    .line 4589
    :cond_1
    if-ne p1, v6, :cond_2

    .line 4591
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 4593
    :pswitch_16
    const/16 v3, 0xff

    .line 4594
    const/16 v1, 0xff

    .line 4595
    goto/16 :goto_0

    .line 4597
    :pswitch_17
    const/16 v3, 0xcc

    .line 4598
    const/16 v1, 0xe1

    .line 4599
    goto/16 :goto_0

    .line 4601
    :pswitch_18
    const/16 v3, 0xcc

    .line 4602
    const/16 v1, 0xe8

    .line 4603
    goto/16 :goto_0

    .line 4605
    :pswitch_19
    const/16 v3, 0xcc

    .line 4606
    const/16 v1, 0xed

    .line 4607
    goto/16 :goto_0

    .line 4609
    :pswitch_1a
    const/16 v3, 0xcc

    .line 4610
    const/16 v1, 0xee

    .line 4611
    goto/16 :goto_0

    .line 4613
    :pswitch_1b
    const/16 v3, 0xcc

    .line 4614
    const/16 v1, 0xec

    .line 4615
    goto/16 :goto_0

    .line 4617
    :pswitch_1c
    const/16 v3, 0xff

    .line 4618
    const/16 v1, 0xff

    .line 4619
    goto/16 :goto_0

    .line 4621
    :pswitch_1d
    const/16 v3, 0xf0

    .line 4622
    const/16 v1, 0xf0

    .line 4623
    goto/16 :goto_0

    .line 4625
    :pswitch_1e
    const/16 v3, 0xdf

    .line 4626
    const/16 v1, 0xdf

    .line 4627
    goto/16 :goto_0

    .line 4629
    :pswitch_1f
    const/16 v3, 0xcc

    .line 4630
    const/16 v1, 0xcc

    .line 4631
    goto/16 :goto_0

    .line 4633
    :pswitch_20
    const/16 v3, 0xb6

    .line 4634
    const/16 v1, 0xb6

    .line 4635
    goto/16 :goto_0

    .line 4639
    :cond_2
    const/4 v3, -0x1

    .line 4640
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 4491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 4541
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 4591
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RB_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 559
    const/4 v3, 0x0

    .line 560
    .local v3, "min":I
    const/4 v1, 0x0

    .line 562
    .local v1, "max":I
    const/4 v0, 0x0

    .line 564
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 567
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 570
    if-nez p1, :cond_0

    .line 572
    packed-switch v0, :pswitch_data_0

    .line 724
    :goto_0
    aput v1, v2, v4

    .line 725
    aput v3, v2, v5

    .line 727
    return-object v2

    .line 574
    :pswitch_0
    const/4 v3, 0x0

    .line 575
    const/4 v1, 0x0

    .line 576
    goto :goto_0

    .line 578
    :pswitch_1
    const/4 v3, 0x0

    .line 579
    const/16 v1, 0x24

    .line 580
    goto :goto_0

    .line 582
    :pswitch_2
    const/4 v3, 0x0

    .line 583
    const/16 v1, 0x42

    .line 584
    goto :goto_0

    .line 586
    :pswitch_3
    const/4 v3, 0x0

    .line 587
    const/16 v1, 0x5c

    .line 588
    goto :goto_0

    .line 590
    :pswitch_4
    const/4 v3, 0x0

    .line 591
    const/16 v1, 0x75

    .line 592
    goto :goto_0

    .line 594
    :pswitch_5
    const/4 v3, 0x0

    .line 595
    const/16 v1, 0x88

    .line 596
    goto :goto_0

    .line 598
    :pswitch_6
    const/4 v3, 0x0

    .line 599
    const/16 v1, 0x9c

    .line 600
    goto :goto_0

    .line 602
    :pswitch_7
    const/4 v3, 0x0

    .line 603
    const/16 v1, 0xac

    .line 604
    goto :goto_0

    .line 606
    :pswitch_8
    const/4 v3, 0x0

    .line 607
    const/16 v1, 0xbc

    .line 608
    goto :goto_0

    .line 610
    :pswitch_9
    const/4 v3, 0x0

    .line 611
    const/16 v1, 0xca

    .line 612
    goto :goto_0

    .line 614
    :pswitch_a
    const/4 v3, 0x0

    .line 615
    const/16 v1, 0xd8

    .line 616
    goto :goto_0

    .line 620
    :cond_0
    if-ne p1, v5, :cond_1

    .line 622
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 624
    :pswitch_b
    const/4 v3, 0x0

    .line 625
    const/4 v1, 0x0

    .line 626
    goto :goto_0

    .line 628
    :pswitch_c
    const/4 v3, 0x0

    .line 629
    const/16 v1, 0x24

    .line 630
    goto :goto_0

    .line 632
    :pswitch_d
    const/4 v3, 0x0

    .line 633
    const/16 v1, 0x42

    .line 634
    goto :goto_0

    .line 636
    :pswitch_e
    const/4 v3, 0x0

    .line 637
    const/16 v1, 0x5c

    .line 638
    goto :goto_0

    .line 640
    :pswitch_f
    const/4 v3, 0x0

    .line 641
    const/16 v1, 0x75

    .line 642
    goto :goto_0

    .line 644
    :pswitch_10
    const/4 v3, 0x0

    .line 645
    const/16 v1, 0x88

    .line 646
    goto :goto_0

    .line 648
    :pswitch_11
    const/4 v3, 0x0

    .line 649
    const/16 v1, 0x9c

    .line 650
    goto :goto_0

    .line 652
    :pswitch_12
    const/4 v3, 0x0

    .line 653
    const/16 v1, 0xac

    .line 654
    goto :goto_0

    .line 656
    :pswitch_13
    const/4 v3, 0x0

    .line 657
    const/16 v1, 0xbc

    .line 658
    goto :goto_0

    .line 660
    :pswitch_14
    const/4 v3, 0x0

    .line 661
    const/16 v1, 0xca

    .line 662
    goto :goto_0

    .line 664
    :pswitch_15
    const/4 v3, 0x0

    .line 665
    const/16 v1, 0xd8

    .line 666
    goto :goto_0

    .line 670
    :cond_1
    if-ne p1, v6, :cond_2

    .line 672
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 674
    :pswitch_16
    const/4 v3, 0x0

    .line 675
    const/4 v1, 0x0

    .line 676
    goto :goto_0

    .line 678
    :pswitch_17
    const/4 v3, 0x0

    .line 679
    const/4 v1, 0x0

    .line 680
    goto :goto_0

    .line 682
    :pswitch_18
    const/4 v3, 0x0

    .line 683
    const/4 v1, 0x0

    .line 684
    goto :goto_0

    .line 686
    :pswitch_19
    const/4 v3, 0x0

    .line 687
    const/4 v1, 0x0

    .line 688
    goto :goto_0

    .line 690
    :pswitch_1a
    const/4 v3, 0x0

    .line 691
    const/4 v1, 0x0

    .line 692
    goto :goto_0

    .line 694
    :pswitch_1b
    const/4 v3, 0x0

    .line 695
    const/4 v1, 0x0

    .line 696
    goto :goto_0

    .line 698
    :pswitch_1c
    const/4 v3, 0x0

    .line 699
    const/4 v1, 0x0

    .line 700
    goto :goto_0

    .line 702
    :pswitch_1d
    const/4 v3, 0x0

    .line 703
    const/4 v1, 0x0

    .line 704
    goto :goto_0

    .line 706
    :pswitch_1e
    const/4 v3, 0x0

    .line 707
    const/4 v1, 0x0

    .line 708
    goto/16 :goto_0

    .line 710
    :pswitch_1f
    const/4 v3, 0x0

    .line 711
    const/4 v1, 0x0

    .line 712
    goto/16 :goto_0

    .line 714
    :pswitch_20
    const/4 v3, 0x0

    .line 715
    const/4 v1, 0x0

    .line 716
    goto/16 :goto_0

    .line 720
    :cond_2
    const/4 v3, -0x1

    .line 721
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 622
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 672
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3789
    const/4 v3, 0x0

    .line 3790
    .local v3, "min":I
    const/4 v1, 0x0

    .line 3792
    .local v1, "max":I
    const/4 v0, 0x0

    .line 3794
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 3797
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 3800
    if-nez p1, :cond_0

    .line 3802
    packed-switch v0, :pswitch_data_0

    .line 3954
    :goto_0
    aput v1, v2, v4

    .line 3955
    aput v3, v2, v5

    .line 3957
    return-object v2

    .line 3804
    :pswitch_0
    const/4 v3, 0x0

    .line 3805
    const/4 v1, 0x0

    .line 3806
    goto :goto_0

    .line 3808
    :pswitch_1
    const/4 v3, 0x0

    .line 3809
    const/4 v1, 0x0

    .line 3810
    goto :goto_0

    .line 3812
    :pswitch_2
    const/4 v3, 0x0

    .line 3813
    const/4 v1, 0x1

    .line 3814
    goto :goto_0

    .line 3816
    :pswitch_3
    const/4 v3, 0x0

    .line 3817
    const/4 v1, 0x1

    .line 3818
    goto :goto_0

    .line 3820
    :pswitch_4
    const/4 v3, 0x0

    .line 3821
    const/4 v1, 0x1

    .line 3822
    goto :goto_0

    .line 3824
    :pswitch_5
    const/4 v3, 0x0

    .line 3825
    const/4 v1, 0x1

    .line 3826
    goto :goto_0

    .line 3828
    :pswitch_6
    const/4 v3, 0x0

    .line 3829
    const/16 v1, 0x9c

    .line 3830
    goto :goto_0

    .line 3832
    :pswitch_7
    const/4 v3, 0x0

    .line 3833
    const/16 v1, 0xac

    .line 3834
    goto :goto_0

    .line 3836
    :pswitch_8
    const/4 v3, 0x0

    .line 3837
    const/16 v1, 0xbc

    .line 3838
    goto :goto_0

    .line 3840
    :pswitch_9
    const/4 v3, 0x0

    .line 3841
    const/16 v1, 0xca

    .line 3842
    goto :goto_0

    .line 3844
    :pswitch_a
    const/4 v3, 0x0

    .line 3845
    const/16 v1, 0xd8

    .line 3846
    goto :goto_0

    .line 3850
    :cond_0
    if-ne p1, v5, :cond_1

    .line 3852
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3854
    :pswitch_b
    const/4 v3, 0x0

    .line 3855
    const/4 v1, 0x0

    .line 3856
    goto :goto_0

    .line 3858
    :pswitch_c
    const/4 v3, 0x0

    .line 3859
    const/4 v1, 0x0

    .line 3860
    goto :goto_0

    .line 3862
    :pswitch_d
    const/4 v3, 0x0

    .line 3863
    const/4 v1, 0x1

    .line 3864
    goto :goto_0

    .line 3866
    :pswitch_e
    const/4 v3, 0x0

    .line 3867
    const/4 v1, 0x2

    .line 3868
    goto :goto_0

    .line 3870
    :pswitch_f
    const/4 v3, 0x0

    .line 3871
    const/4 v1, 0x2

    .line 3872
    goto :goto_0

    .line 3874
    :pswitch_10
    const/4 v3, 0x0

    .line 3875
    const/4 v1, 0x3

    .line 3876
    goto :goto_0

    .line 3878
    :pswitch_11
    const/4 v3, 0x0

    .line 3879
    const/16 v1, 0x9c

    .line 3880
    goto :goto_0

    .line 3882
    :pswitch_12
    const/4 v3, 0x0

    .line 3883
    const/16 v1, 0xac

    .line 3884
    goto :goto_0

    .line 3886
    :pswitch_13
    const/4 v3, 0x0

    .line 3887
    const/16 v1, 0xbc

    .line 3888
    goto :goto_0

    .line 3890
    :pswitch_14
    const/4 v3, 0x0

    .line 3891
    const/16 v1, 0xca

    .line 3892
    goto :goto_0

    .line 3894
    :pswitch_15
    const/4 v3, 0x0

    .line 3895
    const/16 v1, 0xd8

    .line 3896
    goto :goto_0

    .line 3900
    :cond_1
    if-ne p1, v6, :cond_2

    .line 3902
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 3904
    :pswitch_16
    const/4 v3, 0x0

    .line 3905
    const/4 v1, 0x0

    .line 3906
    goto :goto_0

    .line 3908
    :pswitch_17
    const/4 v3, 0x0

    .line 3909
    const/4 v1, 0x0

    .line 3910
    goto :goto_0

    .line 3912
    :pswitch_18
    const/4 v3, 0x0

    .line 3913
    const/4 v1, 0x0

    .line 3914
    goto :goto_0

    .line 3916
    :pswitch_19
    const/4 v3, 0x0

    .line 3917
    const/4 v1, 0x0

    .line 3918
    goto :goto_0

    .line 3920
    :pswitch_1a
    const/4 v3, 0x0

    .line 3921
    const/4 v1, 0x0

    .line 3922
    goto :goto_0

    .line 3924
    :pswitch_1b
    const/4 v3, 0x0

    .line 3925
    const/4 v1, 0x0

    .line 3926
    goto :goto_0

    .line 3928
    :pswitch_1c
    const/4 v3, 0x0

    .line 3929
    const/4 v1, 0x0

    .line 3930
    goto :goto_0

    .line 3932
    :pswitch_1d
    const/4 v3, 0x0

    .line 3933
    const/4 v1, 0x0

    .line 3934
    goto :goto_0

    .line 3936
    :pswitch_1e
    const/4 v3, 0x0

    .line 3937
    const/4 v1, 0x0

    .line 3938
    goto :goto_0

    .line 3940
    :pswitch_1f
    const/4 v3, 0x0

    .line 3941
    const/4 v1, 0x0

    .line 3942
    goto :goto_0

    .line 3944
    :pswitch_20
    const/4 v3, 0x0

    .line 3945
    const/4 v1, 0x0

    .line 3946
    goto :goto_0

    .line 3950
    :cond_2
    const/4 v3, -0x1

    .line 3951
    const/4 v1, -0x1

    goto :goto_0

    .line 3802
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 3852
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 3902
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RG_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 387
    const/4 v3, 0x0

    .line 388
    .local v3, "min":I
    const/4 v1, 0x0

    .line 390
    .local v1, "max":I
    const/4 v0, 0x0

    .line 392
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 395
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 398
    if-nez p1, :cond_0

    .line 400
    packed-switch v0, :pswitch_data_0

    .line 552
    :goto_0
    aput v1, v2, v4

    .line 553
    aput v3, v2, v5

    .line 555
    return-object v2

    .line 402
    :pswitch_0
    const/4 v3, 0x0

    .line 403
    const/4 v1, 0x0

    .line 404
    goto :goto_0

    .line 406
    :pswitch_1
    const/4 v3, 0x0

    .line 407
    const/4 v1, 0x0

    .line 408
    goto :goto_0

    .line 410
    :pswitch_2
    const/4 v3, 0x0

    .line 411
    const/4 v1, 0x0

    .line 412
    goto :goto_0

    .line 414
    :pswitch_3
    const/4 v3, 0x0

    .line 415
    const/4 v1, 0x0

    .line 416
    goto :goto_0

    .line 418
    :pswitch_4
    const/4 v3, 0x0

    .line 419
    const/4 v1, 0x1

    .line 420
    goto :goto_0

    .line 422
    :pswitch_5
    const/4 v3, 0x0

    .line 423
    const/4 v1, 0x0

    .line 424
    goto :goto_0

    .line 426
    :pswitch_6
    const/4 v3, 0x0

    .line 427
    const/4 v1, 0x0

    .line 428
    goto :goto_0

    .line 430
    :pswitch_7
    const/4 v3, 0x0

    .line 431
    const/4 v1, 0x1

    .line 432
    goto :goto_0

    .line 434
    :pswitch_8
    const/4 v3, 0x0

    .line 435
    const/4 v1, 0x0

    .line 436
    goto :goto_0

    .line 438
    :pswitch_9
    const/4 v3, 0x0

    .line 439
    const/4 v1, 0x0

    .line 440
    goto :goto_0

    .line 442
    :pswitch_a
    const/4 v3, 0x0

    .line 443
    const/4 v1, 0x0

    .line 444
    goto :goto_0

    .line 448
    :cond_0
    if-ne p1, v5, :cond_1

    .line 450
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 452
    :pswitch_b
    const/4 v3, 0x0

    .line 453
    const/4 v1, 0x0

    .line 454
    goto :goto_0

    .line 456
    :pswitch_c
    const/4 v3, 0x1

    .line 457
    const/4 v1, 0x1

    .line 458
    goto :goto_0

    .line 460
    :pswitch_d
    const/4 v3, 0x1

    .line 461
    const/4 v1, 0x1

    .line 462
    goto :goto_0

    .line 464
    :pswitch_e
    const/4 v3, 0x1

    .line 465
    const/4 v1, 0x1

    .line 466
    goto :goto_0

    .line 468
    :pswitch_f
    const/4 v3, 0x1

    .line 469
    const/4 v1, 0x1

    .line 470
    goto :goto_0

    .line 472
    :pswitch_10
    const/4 v3, 0x1

    .line 473
    const/4 v1, 0x1

    .line 474
    goto :goto_0

    .line 476
    :pswitch_11
    const/4 v3, 0x1

    .line 477
    const/4 v1, 0x1

    .line 478
    goto :goto_0

    .line 480
    :pswitch_12
    const/4 v3, 0x1

    .line 481
    const/4 v1, 0x1

    .line 482
    goto :goto_0

    .line 484
    :pswitch_13
    const/4 v3, 0x1

    .line 485
    const/4 v1, 0x1

    .line 486
    goto :goto_0

    .line 488
    :pswitch_14
    const/4 v3, 0x1

    .line 489
    const/4 v1, 0x1

    .line 490
    goto :goto_0

    .line 492
    :pswitch_15
    const/4 v3, 0x1

    .line 493
    const/4 v1, 0x1

    .line 494
    goto :goto_0

    .line 498
    :cond_1
    if-ne p1, v6, :cond_2

    .line 500
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 502
    :pswitch_16
    const/4 v3, 0x0

    .line 503
    const/4 v1, 0x0

    .line 504
    goto :goto_0

    .line 506
    :pswitch_17
    const/4 v3, 0x0

    .line 507
    const/4 v1, 0x0

    .line 508
    goto :goto_0

    .line 510
    :pswitch_18
    const/4 v3, 0x0

    .line 511
    const/4 v1, 0x0

    .line 512
    goto :goto_0

    .line 514
    :pswitch_19
    const/4 v3, 0x0

    .line 515
    const/4 v1, 0x0

    .line 516
    goto :goto_0

    .line 518
    :pswitch_1a
    const/4 v3, 0x0

    .line 519
    const/4 v1, 0x0

    .line 520
    goto :goto_0

    .line 522
    :pswitch_1b
    const/4 v3, 0x0

    .line 523
    const/4 v1, 0x0

    .line 524
    goto :goto_0

    .line 526
    :pswitch_1c
    const/4 v3, 0x0

    .line 527
    const/4 v1, 0x0

    .line 528
    goto :goto_0

    .line 530
    :pswitch_1d
    const/4 v3, 0x0

    .line 531
    const/4 v1, 0x0

    .line 532
    goto :goto_0

    .line 534
    :pswitch_1e
    const/4 v3, 0x0

    .line 535
    const/4 v1, 0x0

    .line 536
    goto :goto_0

    .line 538
    :pswitch_1f
    const/4 v3, 0x0

    .line 539
    const/4 v1, 0x0

    .line 540
    goto :goto_0

    .line 542
    :pswitch_20
    const/4 v3, 0x0

    .line 543
    const/4 v1, 0x0

    .line 544
    goto :goto_0

    .line 548
    :cond_2
    const/4 v3, -0x1

    .line 549
    const/4 v1, -0x1

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 450
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 500
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3617
    const/4 v3, 0x0

    .line 3618
    .local v3, "min":I
    const/4 v1, 0x0

    .line 3620
    .local v1, "max":I
    const/4 v0, 0x0

    .line 3622
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 3625
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 3628
    if-nez p1, :cond_0

    .line 3630
    packed-switch v0, :pswitch_data_0

    .line 3782
    :goto_0
    aput v1, v2, v4

    .line 3783
    aput v3, v2, v5

    .line 3785
    return-object v2

    .line 3632
    :pswitch_0
    const/4 v3, 0x0

    .line 3633
    const/4 v1, 0x0

    .line 3634
    goto :goto_0

    .line 3636
    :pswitch_1
    const/4 v3, 0x0

    .line 3637
    const/4 v1, 0x0

    .line 3638
    goto :goto_0

    .line 3640
    :pswitch_2
    const/4 v3, 0x0

    .line 3641
    const/4 v1, 0x0

    .line 3642
    goto :goto_0

    .line 3644
    :pswitch_3
    const/4 v3, 0x0

    .line 3645
    const/4 v1, 0x0

    .line 3646
    goto :goto_0

    .line 3648
    :pswitch_4
    const/4 v3, 0x0

    .line 3649
    const/4 v1, 0x0

    .line 3650
    goto :goto_0

    .line 3652
    :pswitch_5
    const/4 v3, 0x0

    .line 3653
    const/4 v1, 0x0

    .line 3654
    goto :goto_0

    .line 3656
    :pswitch_6
    const/4 v3, 0x0

    .line 3657
    const/4 v1, 0x0

    .line 3658
    goto :goto_0

    .line 3660
    :pswitch_7
    const/4 v3, 0x0

    .line 3661
    const/4 v1, 0x1

    .line 3662
    goto :goto_0

    .line 3664
    :pswitch_8
    const/4 v3, 0x0

    .line 3665
    const/4 v1, 0x0

    .line 3666
    goto :goto_0

    .line 3668
    :pswitch_9
    const/4 v3, 0x0

    .line 3669
    const/4 v1, 0x0

    .line 3670
    goto :goto_0

    .line 3672
    :pswitch_a
    const/4 v3, 0x0

    .line 3673
    const/4 v1, 0x0

    .line 3674
    goto :goto_0

    .line 3678
    :cond_0
    if-ne p1, v5, :cond_1

    .line 3680
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3682
    :pswitch_b
    const/4 v3, 0x0

    .line 3683
    const/4 v1, 0x0

    .line 3684
    goto :goto_0

    .line 3686
    :pswitch_c
    const/4 v3, 0x0

    .line 3687
    const/4 v1, 0x0

    .line 3688
    goto :goto_0

    .line 3690
    :pswitch_d
    const/4 v3, 0x0

    .line 3691
    const/4 v1, 0x0

    .line 3692
    goto :goto_0

    .line 3694
    :pswitch_e
    const/4 v3, 0x0

    .line 3695
    const/4 v1, 0x0

    .line 3696
    goto :goto_0

    .line 3698
    :pswitch_f
    const/4 v3, 0x0

    .line 3699
    const/4 v1, 0x0

    .line 3700
    goto :goto_0

    .line 3702
    :pswitch_10
    const/4 v3, 0x0

    .line 3703
    const/4 v1, 0x0

    .line 3704
    goto :goto_0

    .line 3706
    :pswitch_11
    const/4 v3, 0x1

    .line 3707
    const/4 v1, 0x1

    .line 3708
    goto :goto_0

    .line 3710
    :pswitch_12
    const/4 v3, 0x1

    .line 3711
    const/4 v1, 0x1

    .line 3712
    goto :goto_0

    .line 3714
    :pswitch_13
    const/4 v3, 0x1

    .line 3715
    const/4 v1, 0x1

    .line 3716
    goto :goto_0

    .line 3718
    :pswitch_14
    const/4 v3, 0x1

    .line 3719
    const/4 v1, 0x1

    .line 3720
    goto :goto_0

    .line 3722
    :pswitch_15
    const/4 v3, 0x1

    .line 3723
    const/4 v1, 0x1

    .line 3724
    goto :goto_0

    .line 3728
    :cond_1
    if-ne p1, v6, :cond_2

    .line 3730
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 3732
    :pswitch_16
    const/4 v3, 0x0

    .line 3733
    const/4 v1, 0x0

    .line 3734
    goto :goto_0

    .line 3736
    :pswitch_17
    const/4 v3, 0x0

    .line 3737
    const/4 v1, 0x0

    .line 3738
    goto :goto_0

    .line 3740
    :pswitch_18
    const/4 v3, 0x0

    .line 3741
    const/4 v1, 0x0

    .line 3742
    goto :goto_0

    .line 3744
    :pswitch_19
    const/4 v3, 0x0

    .line 3745
    const/4 v1, 0x0

    .line 3746
    goto :goto_0

    .line 3748
    :pswitch_1a
    const/4 v3, 0x0

    .line 3749
    const/4 v1, 0x0

    .line 3750
    goto :goto_0

    .line 3752
    :pswitch_1b
    const/4 v3, 0x0

    .line 3753
    const/4 v1, 0x0

    .line 3754
    goto :goto_0

    .line 3756
    :pswitch_1c
    const/4 v3, 0x0

    .line 3757
    const/4 v1, 0x0

    .line 3758
    goto :goto_0

    .line 3760
    :pswitch_1d
    const/4 v3, 0x0

    .line 3761
    const/4 v1, 0x0

    .line 3762
    goto :goto_0

    .line 3764
    :pswitch_1e
    const/4 v3, 0x0

    .line 3765
    const/4 v1, 0x0

    .line 3766
    goto :goto_0

    .line 3768
    :pswitch_1f
    const/4 v3, 0x0

    .line 3769
    const/4 v1, 0x0

    .line 3770
    goto :goto_0

    .line 3772
    :pswitch_20
    const/4 v3, 0x0

    .line 3773
    const/4 v1, 0x0

    .line 3774
    goto :goto_0

    .line 3778
    :cond_2
    const/4 v3, -0x1

    .line 3779
    const/4 v1, -0x1

    goto :goto_0

    .line 3630
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 3680
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 3730
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RR_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 214
    const/4 v3, 0x0

    .line 215
    .local v3, "min":I
    const/4 v1, 0x0

    .line 217
    .local v1, "max":I
    const/4 v0, 0x0

    .line 219
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 222
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 225
    if-nez p1, :cond_0

    .line 227
    packed-switch v0, :pswitch_data_0

    .line 379
    :goto_0
    aput v1, v2, v4

    .line 380
    aput v3, v2, v5

    .line 382
    return-object v2

    .line 229
    :pswitch_0
    const/16 v3, 0xff

    .line 230
    const/16 v1, 0xff

    .line 231
    goto :goto_0

    .line 233
    :pswitch_1
    const/16 v3, 0xfe

    .line 234
    const/16 v1, 0xfe

    .line 235
    goto :goto_0

    .line 237
    :pswitch_2
    const/16 v3, 0xfe

    .line 238
    const/16 v1, 0xfe

    .line 239
    goto :goto_0

    .line 241
    :pswitch_3
    const/16 v3, 0xfe

    .line 242
    const/16 v1, 0xfe

    .line 243
    goto :goto_0

    .line 245
    :pswitch_4
    const/16 v3, 0xfe

    .line 246
    const/16 v1, 0xfe

    .line 247
    goto :goto_0

    .line 249
    :pswitch_5
    const/16 v3, 0xfe

    .line 250
    const/16 v1, 0xfe

    .line 251
    goto :goto_0

    .line 253
    :pswitch_6
    const/16 v3, 0xfe

    .line 254
    const/16 v1, 0xfe

    .line 255
    goto :goto_0

    .line 257
    :pswitch_7
    const/16 v3, 0xfe

    .line 258
    const/16 v1, 0xfe

    .line 259
    goto :goto_0

    .line 261
    :pswitch_8
    const/16 v3, 0xfe

    .line 262
    const/16 v1, 0xfe

    .line 263
    goto :goto_0

    .line 265
    :pswitch_9
    const/16 v3, 0xfe

    .line 266
    const/16 v1, 0xfe

    .line 267
    goto :goto_0

    .line 269
    :pswitch_a
    const/16 v3, 0xfe

    .line 270
    const/16 v1, 0xfe

    .line 271
    goto :goto_0

    .line 275
    :cond_0
    if-ne p1, v5, :cond_1

    .line 277
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 279
    :pswitch_b
    const/16 v3, 0xff

    .line 280
    const/16 v1, 0xff

    .line 281
    goto :goto_0

    .line 283
    :pswitch_c
    const/16 v3, 0xfe

    .line 284
    const/16 v1, 0xff

    .line 285
    goto :goto_0

    .line 287
    :pswitch_d
    const/16 v3, 0xfe

    .line 288
    const/16 v1, 0xff

    .line 289
    goto :goto_0

    .line 291
    :pswitch_e
    const/16 v3, 0xfe

    .line 292
    const/16 v1, 0xff

    .line 293
    goto :goto_0

    .line 295
    :pswitch_f
    const/16 v3, 0xfe

    .line 296
    const/16 v1, 0xff

    .line 297
    goto :goto_0

    .line 299
    :pswitch_10
    const/16 v3, 0xfe

    .line 300
    const/16 v1, 0xff

    .line 301
    goto :goto_0

    .line 303
    :pswitch_11
    const/16 v3, 0xfe

    .line 304
    const/16 v1, 0xff

    .line 305
    goto :goto_0

    .line 307
    :pswitch_12
    const/16 v3, 0xfe

    .line 308
    const/16 v1, 0xfe

    .line 309
    goto :goto_0

    .line 311
    :pswitch_13
    const/16 v3, 0xfe

    .line 312
    const/16 v1, 0xff

    .line 313
    goto :goto_0

    .line 315
    :pswitch_14
    const/16 v3, 0xfe

    .line 316
    const/16 v1, 0xff

    .line 317
    goto :goto_0

    .line 319
    :pswitch_15
    const/16 v3, 0xfe

    .line 320
    const/16 v1, 0xff

    .line 321
    goto :goto_0

    .line 325
    :cond_1
    if-ne p1, v6, :cond_2

    .line 327
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 329
    :pswitch_16
    const/16 v3, 0xff

    .line 330
    const/16 v1, 0xff

    .line 331
    goto/16 :goto_0

    .line 333
    :pswitch_17
    const/16 v3, 0xff

    .line 334
    const/16 v1, 0xff

    .line 335
    goto/16 :goto_0

    .line 337
    :pswitch_18
    const/16 v3, 0xff

    .line 338
    const/16 v1, 0xff

    .line 339
    goto/16 :goto_0

    .line 341
    :pswitch_19
    const/16 v3, 0xff

    .line 342
    const/16 v1, 0xff

    .line 343
    goto/16 :goto_0

    .line 345
    :pswitch_1a
    const/16 v3, 0xff

    .line 346
    const/16 v1, 0xff

    .line 347
    goto/16 :goto_0

    .line 349
    :pswitch_1b
    const/16 v3, 0xff

    .line 350
    const/16 v1, 0xff

    .line 351
    goto/16 :goto_0

    .line 353
    :pswitch_1c
    const/16 v3, 0xff

    .line 354
    const/16 v1, 0xff

    .line 355
    goto/16 :goto_0

    .line 357
    :pswitch_1d
    const/16 v3, 0xff

    .line 358
    const/16 v1, 0xff

    .line 359
    goto/16 :goto_0

    .line 361
    :pswitch_1e
    const/16 v3, 0xff

    .line 362
    const/16 v1, 0xff

    .line 363
    goto/16 :goto_0

    .line 365
    :pswitch_1f
    const/16 v3, 0xff

    .line 366
    const/16 v1, 0xff

    .line 367
    goto/16 :goto_0

    .line 369
    :pswitch_20
    const/16 v3, 0xff

    .line 370
    const/16 v1, 0xff

    .line 371
    goto/16 :goto_0

    .line 375
    :cond_2
    const/4 v3, -0x1

    .line 376
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 277
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 327
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3444
    const/4 v3, 0x0

    .line 3445
    .local v3, "min":I
    const/4 v1, 0x0

    .line 3447
    .local v1, "max":I
    const/4 v0, 0x0

    .line 3449
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 3452
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 3455
    if-nez p1, :cond_0

    .line 3457
    packed-switch v0, :pswitch_data_0

    .line 3609
    :goto_0
    aput v1, v2, v4

    .line 3610
    aput v3, v2, v5

    .line 3612
    return-object v2

    .line 3459
    :pswitch_0
    const/16 v3, 0xff

    .line 3460
    const/16 v1, 0xff

    .line 3461
    goto :goto_0

    .line 3463
    :pswitch_1
    const/16 v3, 0xcc

    .line 3464
    const/16 v1, 0xef

    .line 3465
    goto :goto_0

    .line 3467
    :pswitch_2
    const/16 v3, 0xcc

    .line 3468
    const/16 v1, 0xff

    .line 3469
    goto :goto_0

    .line 3471
    :pswitch_3
    const/16 v3, 0xcc

    .line 3472
    const/16 v1, 0xff

    .line 3473
    goto :goto_0

    .line 3475
    :pswitch_4
    const/16 v3, 0xcc

    .line 3476
    const/16 v1, 0xff

    .line 3477
    goto :goto_0

    .line 3479
    :pswitch_5
    const/16 v3, 0xcc

    .line 3480
    const/16 v1, 0xff

    .line 3481
    goto :goto_0

    .line 3483
    :pswitch_6
    const/16 v3, 0xfe

    .line 3484
    const/16 v1, 0xfe

    .line 3485
    goto :goto_0

    .line 3487
    :pswitch_7
    const/16 v3, 0xfe

    .line 3488
    const/16 v1, 0xfe

    .line 3489
    goto :goto_0

    .line 3491
    :pswitch_8
    const/16 v3, 0xfe

    .line 3492
    const/16 v1, 0xfe

    .line 3493
    goto :goto_0

    .line 3495
    :pswitch_9
    const/16 v3, 0xfe

    .line 3496
    const/16 v1, 0xfe

    .line 3497
    goto :goto_0

    .line 3499
    :pswitch_a
    const/16 v3, 0xfe

    .line 3500
    const/16 v1, 0xfe

    .line 3501
    goto :goto_0

    .line 3505
    :cond_0
    if-ne p1, v5, :cond_1

    .line 3507
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3509
    :pswitch_b
    const/16 v3, 0xff

    .line 3510
    const/16 v1, 0xff

    .line 3511
    goto :goto_0

    .line 3513
    :pswitch_c
    const/16 v3, 0xcc

    .line 3514
    const/16 v1, 0xee

    .line 3515
    goto :goto_0

    .line 3517
    :pswitch_d
    const/16 v3, 0xcc

    .line 3518
    const/16 v1, 0xff

    .line 3519
    goto :goto_0

    .line 3521
    :pswitch_e
    const/16 v3, 0xcc

    .line 3522
    const/16 v1, 0xff

    .line 3523
    goto :goto_0

    .line 3525
    :pswitch_f
    const/16 v3, 0xcc

    .line 3526
    const/16 v1, 0xff

    .line 3527
    goto :goto_0

    .line 3529
    :pswitch_10
    const/16 v3, 0xcc

    .line 3530
    const/16 v1, 0xff

    .line 3531
    goto :goto_0

    .line 3533
    :pswitch_11
    const/16 v3, 0xfe

    .line 3534
    const/16 v1, 0xff

    .line 3535
    goto :goto_0

    .line 3537
    :pswitch_12
    const/16 v3, 0xfe

    .line 3538
    const/16 v1, 0xfe

    .line 3539
    goto :goto_0

    .line 3541
    :pswitch_13
    const/16 v3, 0xfe

    .line 3542
    const/16 v1, 0xff

    .line 3543
    goto :goto_0

    .line 3545
    :pswitch_14
    const/16 v3, 0xfe

    .line 3546
    const/16 v1, 0xff

    .line 3547
    goto :goto_0

    .line 3549
    :pswitch_15
    const/16 v3, 0xfe

    .line 3550
    const/16 v1, 0xff

    .line 3551
    goto :goto_0

    .line 3555
    :cond_1
    if-ne p1, v6, :cond_2

    .line 3557
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 3559
    :pswitch_16
    const/16 v3, 0xff

    .line 3560
    const/16 v1, 0xff

    .line 3561
    goto/16 :goto_0

    .line 3563
    :pswitch_17
    const/16 v3, 0xcc

    .line 3564
    const/16 v1, 0xdc

    .line 3565
    goto/16 :goto_0

    .line 3567
    :pswitch_18
    const/16 v3, 0xcc

    .line 3568
    const/16 v1, 0xe2

    .line 3569
    goto/16 :goto_0

    .line 3571
    :pswitch_19
    const/16 v3, 0xcc

    .line 3572
    const/16 v1, 0xe4

    .line 3573
    goto/16 :goto_0

    .line 3575
    :pswitch_1a
    const/16 v3, 0xcc

    .line 3576
    const/16 v1, 0xe4

    .line 3577
    goto/16 :goto_0

    .line 3579
    :pswitch_1b
    const/16 v3, 0xcc

    .line 3580
    const/16 v1, 0xe2

    .line 3581
    goto/16 :goto_0

    .line 3583
    :pswitch_1c
    const/16 v3, 0xff

    .line 3584
    const/16 v1, 0xff

    .line 3585
    goto/16 :goto_0

    .line 3587
    :pswitch_1d
    const/16 v3, 0xff

    .line 3588
    const/16 v1, 0xff

    .line 3589
    goto/16 :goto_0

    .line 3591
    :pswitch_1e
    const/16 v3, 0xff

    .line 3592
    const/16 v1, 0xff

    .line 3593
    goto/16 :goto_0

    .line 3595
    :pswitch_1f
    const/16 v3, 0xff

    .line 3596
    const/16 v1, 0xff

    .line 3597
    goto/16 :goto_0

    .line 3599
    :pswitch_20
    const/16 v3, 0xff

    .line 3600
    const/16 v1, 0xff

    .line 3601
    goto/16 :goto_0

    .line 3605
    :cond_2
    const/4 v3, -0x1

    .line 3606
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 3457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 3507
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 3557
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YB_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2109
    const/4 v3, 0x0

    .line 2110
    .local v3, "min":I
    const/4 v1, 0x0

    .line 2112
    .local v1, "max":I
    const/4 v0, 0x0

    .line 2114
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 2117
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 2120
    if-nez p1, :cond_0

    .line 2122
    packed-switch v0, :pswitch_data_0

    .line 2274
    :goto_0
    aput v1, v2, v4

    .line 2275
    aput v3, v2, v5

    .line 2277
    return-object v2

    .line 2124
    :pswitch_0
    const/4 v3, 0x0

    .line 2125
    const/4 v1, 0x0

    .line 2126
    goto :goto_0

    .line 2128
    :pswitch_1
    const/4 v3, 0x0

    .line 2129
    const/4 v1, 0x0

    .line 2130
    goto :goto_0

    .line 2132
    :pswitch_2
    const/4 v3, 0x0

    .line 2133
    const/4 v1, 0x0

    .line 2134
    goto :goto_0

    .line 2136
    :pswitch_3
    const/4 v3, 0x0

    .line 2137
    const/4 v1, 0x0

    .line 2138
    goto :goto_0

    .line 2140
    :pswitch_4
    const/4 v3, 0x0

    .line 2141
    const/4 v1, 0x0

    .line 2142
    goto :goto_0

    .line 2144
    :pswitch_5
    const/4 v3, 0x0

    .line 2145
    const/4 v1, 0x0

    .line 2146
    goto :goto_0

    .line 2148
    :pswitch_6
    const/4 v3, 0x0

    .line 2149
    const/4 v1, 0x0

    .line 2150
    goto :goto_0

    .line 2152
    :pswitch_7
    const/4 v3, 0x0

    .line 2153
    const/4 v1, 0x0

    .line 2154
    goto :goto_0

    .line 2156
    :pswitch_8
    const/4 v3, 0x0

    .line 2157
    const/4 v1, 0x0

    .line 2158
    goto :goto_0

    .line 2160
    :pswitch_9
    const/4 v3, 0x0

    .line 2161
    const/4 v1, 0x0

    .line 2162
    goto :goto_0

    .line 2164
    :pswitch_a
    const/4 v3, 0x0

    .line 2165
    const/4 v1, 0x0

    .line 2166
    goto :goto_0

    .line 2170
    :cond_0
    if-ne p1, v5, :cond_1

    .line 2172
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2174
    :pswitch_b
    const/4 v3, 0x0

    .line 2175
    const/4 v1, 0x0

    .line 2176
    goto :goto_0

    .line 2178
    :pswitch_c
    const/4 v3, 0x0

    .line 2179
    const/4 v1, 0x0

    .line 2180
    goto :goto_0

    .line 2182
    :pswitch_d
    const/4 v3, 0x0

    .line 2183
    const/4 v1, 0x0

    .line 2184
    goto :goto_0

    .line 2186
    :pswitch_e
    const/4 v3, 0x0

    .line 2187
    const/4 v1, 0x0

    .line 2188
    goto :goto_0

    .line 2190
    :pswitch_f
    const/4 v3, 0x0

    .line 2191
    const/4 v1, 0x0

    .line 2192
    goto :goto_0

    .line 2194
    :pswitch_10
    const/4 v3, 0x0

    .line 2195
    const/4 v1, 0x0

    .line 2196
    goto :goto_0

    .line 2198
    :pswitch_11
    const/4 v3, 0x0

    .line 2199
    const/4 v1, 0x0

    .line 2200
    goto :goto_0

    .line 2202
    :pswitch_12
    const/4 v3, 0x0

    .line 2203
    const/4 v1, 0x0

    .line 2204
    goto :goto_0

    .line 2206
    :pswitch_13
    const/4 v3, 0x0

    .line 2207
    const/4 v1, 0x0

    .line 2208
    goto :goto_0

    .line 2210
    :pswitch_14
    const/4 v3, 0x0

    .line 2211
    const/4 v1, 0x0

    .line 2212
    goto :goto_0

    .line 2214
    :pswitch_15
    const/4 v3, 0x0

    .line 2215
    const/4 v1, 0x0

    .line 2216
    goto :goto_0

    .line 2220
    :cond_1
    if-ne p1, v6, :cond_2

    .line 2222
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2224
    :pswitch_16
    const/4 v3, 0x0

    .line 2225
    const/4 v1, 0x0

    .line 2226
    goto :goto_0

    .line 2228
    :pswitch_17
    const/4 v3, 0x0

    .line 2229
    const/4 v1, 0x0

    .line 2230
    goto :goto_0

    .line 2232
    :pswitch_18
    const/4 v3, 0x0

    .line 2233
    const/4 v1, 0x0

    .line 2234
    goto :goto_0

    .line 2236
    :pswitch_19
    const/4 v3, 0x0

    .line 2237
    const/4 v1, 0x0

    .line 2238
    goto :goto_0

    .line 2240
    :pswitch_1a
    const/4 v3, 0x0

    .line 2241
    const/4 v1, 0x0

    .line 2242
    goto :goto_0

    .line 2244
    :pswitch_1b
    const/4 v3, 0x0

    .line 2245
    const/4 v1, 0x0

    .line 2246
    goto :goto_0

    .line 2248
    :pswitch_1c
    const/4 v3, 0x0

    .line 2249
    const/4 v1, 0x0

    .line 2250
    goto :goto_0

    .line 2252
    :pswitch_1d
    const/4 v3, 0x0

    .line 2253
    const/4 v1, 0x0

    .line 2254
    goto :goto_0

    .line 2256
    :pswitch_1e
    const/4 v3, 0x0

    .line 2257
    const/4 v1, 0x0

    .line 2258
    goto :goto_0

    .line 2260
    :pswitch_1f
    const/4 v3, 0x0

    .line 2261
    const/4 v1, 0x0

    .line 2262
    goto :goto_0

    .line 2264
    :pswitch_20
    const/4 v3, 0x0

    .line 2265
    const/4 v1, 0x0

    .line 2266
    goto :goto_0

    .line 2270
    :cond_2
    const/4 v3, -0x1

    .line 2271
    const/4 v1, -0x1

    goto :goto_0

    .line 2122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2172
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 2222
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5339
    const/4 v3, 0x0

    .line 5340
    .local v3, "min":I
    const/4 v1, 0x0

    .line 5342
    .local v1, "max":I
    const/4 v0, 0x0

    .line 5344
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 5347
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 5350
    if-nez p1, :cond_0

    .line 5352
    packed-switch v0, :pswitch_data_0

    .line 5504
    :goto_0
    aput v1, v2, v4

    .line 5505
    aput v3, v2, v5

    .line 5507
    return-object v2

    .line 5354
    :pswitch_0
    const/4 v3, 0x0

    .line 5355
    const/4 v1, 0x0

    .line 5356
    goto :goto_0

    .line 5358
    :pswitch_1
    const/4 v3, 0x0

    .line 5359
    const/4 v1, 0x0

    .line 5360
    goto :goto_0

    .line 5362
    :pswitch_2
    const/4 v3, 0x0

    .line 5363
    const/4 v1, 0x1

    .line 5364
    goto :goto_0

    .line 5366
    :pswitch_3
    const/4 v3, 0x0

    .line 5367
    const/4 v1, 0x1

    .line 5368
    goto :goto_0

    .line 5370
    :pswitch_4
    const/4 v3, 0x0

    .line 5371
    const/4 v1, 0x2

    .line 5372
    goto :goto_0

    .line 5374
    :pswitch_5
    const/4 v3, 0x0

    .line 5375
    const/4 v1, 0x2

    .line 5376
    goto :goto_0

    .line 5378
    :pswitch_6
    const/4 v3, 0x0

    .line 5379
    const/4 v1, 0x0

    .line 5380
    goto :goto_0

    .line 5382
    :pswitch_7
    const/4 v3, 0x0

    .line 5383
    const/4 v1, 0x0

    .line 5384
    goto :goto_0

    .line 5386
    :pswitch_8
    const/4 v3, 0x0

    .line 5387
    const/4 v1, 0x0

    .line 5388
    goto :goto_0

    .line 5390
    :pswitch_9
    const/4 v3, 0x0

    .line 5391
    const/4 v1, 0x0

    .line 5392
    goto :goto_0

    .line 5394
    :pswitch_a
    const/4 v3, 0x0

    .line 5395
    const/4 v1, 0x0

    .line 5396
    goto :goto_0

    .line 5400
    :cond_0
    if-ne p1, v5, :cond_1

    .line 5402
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 5404
    :pswitch_b
    const/4 v3, 0x0

    .line 5405
    const/4 v1, 0x0

    .line 5406
    goto :goto_0

    .line 5408
    :pswitch_c
    const/4 v3, 0x0

    .line 5409
    const/4 v1, 0x0

    .line 5410
    goto :goto_0

    .line 5412
    :pswitch_d
    const/4 v3, 0x0

    .line 5413
    const/4 v1, 0x0

    .line 5414
    goto :goto_0

    .line 5416
    :pswitch_e
    const/4 v3, 0x0

    .line 5417
    const/4 v1, 0x0

    .line 5418
    goto :goto_0

    .line 5420
    :pswitch_f
    const/4 v3, 0x0

    .line 5421
    const/4 v1, 0x0

    .line 5422
    goto :goto_0

    .line 5424
    :pswitch_10
    const/4 v3, 0x0

    .line 5425
    const/4 v1, 0x0

    .line 5426
    goto :goto_0

    .line 5428
    :pswitch_11
    const/4 v3, 0x0

    .line 5429
    const/4 v1, 0x0

    .line 5430
    goto :goto_0

    .line 5432
    :pswitch_12
    const/4 v3, 0x0

    .line 5433
    const/4 v1, 0x0

    .line 5434
    goto :goto_0

    .line 5436
    :pswitch_13
    const/4 v3, 0x0

    .line 5437
    const/4 v1, 0x0

    .line 5438
    goto :goto_0

    .line 5440
    :pswitch_14
    const/4 v3, 0x0

    .line 5441
    const/4 v1, 0x0

    .line 5442
    goto :goto_0

    .line 5444
    :pswitch_15
    const/4 v3, 0x0

    .line 5445
    const/4 v1, 0x0

    .line 5446
    goto :goto_0

    .line 5450
    :cond_1
    if-ne p1, v6, :cond_2

    .line 5452
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 5454
    :pswitch_16
    const/4 v3, 0x0

    .line 5455
    const/4 v1, 0x0

    .line 5456
    goto :goto_0

    .line 5458
    :pswitch_17
    const/4 v3, 0x0

    .line 5459
    const/4 v1, 0x0

    .line 5460
    goto :goto_0

    .line 5462
    :pswitch_18
    const/4 v3, 0x0

    .line 5463
    const/4 v1, 0x0

    .line 5464
    goto :goto_0

    .line 5466
    :pswitch_19
    const/4 v3, 0x0

    .line 5467
    const/4 v1, 0x0

    .line 5468
    goto :goto_0

    .line 5470
    :pswitch_1a
    const/4 v3, 0x0

    .line 5471
    const/4 v1, 0x0

    .line 5472
    goto :goto_0

    .line 5474
    :pswitch_1b
    const/4 v3, 0x0

    .line 5475
    const/4 v1, 0x0

    .line 5476
    goto :goto_0

    .line 5478
    :pswitch_1c
    const/4 v3, 0x0

    .line 5479
    const/4 v1, 0x0

    .line 5480
    goto :goto_0

    .line 5482
    :pswitch_1d
    const/4 v3, 0x0

    .line 5483
    const/4 v1, 0x0

    .line 5484
    goto :goto_0

    .line 5486
    :pswitch_1e
    const/4 v3, 0x0

    .line 5487
    const/4 v1, 0x0

    .line 5488
    goto :goto_0

    .line 5490
    :pswitch_1f
    const/4 v3, 0x0

    .line 5491
    const/4 v1, 0x0

    .line 5492
    goto :goto_0

    .line 5494
    :pswitch_20
    const/4 v3, 0x0

    .line 5495
    const/4 v1, 0x0

    .line 5496
    goto :goto_0

    .line 5500
    :cond_2
    const/4 v3, -0x1

    .line 5501
    const/4 v1, -0x1

    goto :goto_0

    .line 5352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 5402
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 5452
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YG_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1937
    const/4 v3, 0x0

    .line 1938
    .local v3, "min":I
    const/4 v1, 0x0

    .line 1940
    .local v1, "max":I
    const/4 v0, 0x0

    .line 1942
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 1945
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 1948
    if-nez p1, :cond_0

    .line 1950
    packed-switch v0, :pswitch_data_0

    .line 2102
    :goto_0
    aput v1, v2, v4

    .line 2103
    aput v3, v2, v5

    .line 2105
    return-object v2

    .line 1952
    :pswitch_0
    const/16 v3, 0xff

    .line 1953
    const/16 v1, 0xff

    .line 1954
    goto :goto_0

    .line 1956
    :pswitch_1
    const/16 v3, 0xcc

    .line 1957
    const/16 v1, 0xcf

    .line 1958
    goto :goto_0

    .line 1960
    :pswitch_2
    const/16 v3, 0xff

    .line 1961
    const/16 v1, 0xff

    .line 1962
    goto :goto_0

    .line 1964
    :pswitch_3
    const/16 v3, 0xff

    .line 1965
    const/16 v1, 0xff

    .line 1966
    goto :goto_0

    .line 1968
    :pswitch_4
    const/16 v3, 0xff

    .line 1969
    const/16 v1, 0xff

    .line 1970
    goto :goto_0

    .line 1972
    :pswitch_5
    const/16 v3, 0xff

    .line 1973
    const/16 v1, 0xff

    .line 1974
    goto :goto_0

    .line 1976
    :pswitch_6
    const/16 v3, 0xff

    .line 1977
    const/16 v1, 0xff

    .line 1978
    goto :goto_0

    .line 1980
    :pswitch_7
    const/16 v3, 0xff

    .line 1981
    const/16 v1, 0xff

    .line 1982
    goto :goto_0

    .line 1984
    :pswitch_8
    const/16 v3, 0xff

    .line 1985
    const/16 v1, 0xff

    .line 1986
    goto :goto_0

    .line 1988
    :pswitch_9
    const/16 v3, 0xff

    .line 1989
    const/16 v1, 0xff

    .line 1990
    goto :goto_0

    .line 1992
    :pswitch_a
    const/16 v3, 0xff

    .line 1993
    const/16 v1, 0xff

    .line 1994
    goto :goto_0

    .line 1998
    :cond_0
    if-ne p1, v5, :cond_1

    .line 2000
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2002
    :pswitch_b
    const/16 v3, 0xff

    .line 2003
    const/16 v1, 0xff

    .line 2004
    goto :goto_0

    .line 2006
    :pswitch_c
    const/16 v3, 0xfe

    .line 2007
    const/16 v1, 0xfe

    .line 2008
    goto :goto_0

    .line 2010
    :pswitch_d
    const/16 v3, 0xfe

    .line 2011
    const/16 v1, 0xfe

    .line 2012
    goto :goto_0

    .line 2014
    :pswitch_e
    const/16 v3, 0xfe

    .line 2015
    const/16 v1, 0xfe

    .line 2016
    goto :goto_0

    .line 2018
    :pswitch_f
    const/16 v3, 0xfe

    .line 2019
    const/16 v1, 0xfe

    .line 2020
    goto :goto_0

    .line 2022
    :pswitch_10
    const/16 v3, 0xfe

    .line 2023
    const/16 v1, 0xfe

    .line 2024
    goto :goto_0

    .line 2026
    :pswitch_11
    const/16 v3, 0xfe

    .line 2027
    const/16 v1, 0xfe

    .line 2028
    goto :goto_0

    .line 2030
    :pswitch_12
    const/16 v3, 0xfe

    .line 2031
    const/16 v1, 0xfe

    .line 2032
    goto :goto_0

    .line 2034
    :pswitch_13
    const/16 v3, 0xfe

    .line 2035
    const/16 v1, 0xfe

    .line 2036
    goto :goto_0

    .line 2038
    :pswitch_14
    const/16 v3, 0xfe

    .line 2039
    const/16 v1, 0xfe

    .line 2040
    goto :goto_0

    .line 2042
    :pswitch_15
    const/16 v3, 0xfe

    .line 2043
    const/16 v1, 0xfe

    .line 2044
    goto :goto_0

    .line 2048
    :cond_1
    if-ne p1, v6, :cond_2

    .line 2050
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2052
    :pswitch_16
    const/16 v3, 0xff

    .line 2053
    const/16 v1, 0xff

    .line 2054
    goto/16 :goto_0

    .line 2056
    :pswitch_17
    const/16 v3, 0xff

    .line 2057
    const/16 v1, 0xff

    .line 2058
    goto/16 :goto_0

    .line 2060
    :pswitch_18
    const/16 v3, 0xff

    .line 2061
    const/16 v1, 0xff

    .line 2062
    goto/16 :goto_0

    .line 2064
    :pswitch_19
    const/16 v3, 0xff

    .line 2065
    const/16 v1, 0xff

    .line 2066
    goto/16 :goto_0

    .line 2068
    :pswitch_1a
    const/16 v3, 0xff

    .line 2069
    const/16 v1, 0xff

    .line 2070
    goto/16 :goto_0

    .line 2072
    :pswitch_1b
    const/16 v3, 0xff

    .line 2073
    const/16 v1, 0xff

    .line 2074
    goto/16 :goto_0

    .line 2076
    :pswitch_1c
    const/16 v3, 0xff

    .line 2077
    const/16 v1, 0xff

    .line 2078
    goto/16 :goto_0

    .line 2080
    :pswitch_1d
    const/16 v3, 0xff

    .line 2081
    const/16 v1, 0xff

    .line 2082
    goto/16 :goto_0

    .line 2084
    :pswitch_1e
    const/16 v3, 0xff

    .line 2085
    const/16 v1, 0xff

    .line 2086
    goto/16 :goto_0

    .line 2088
    :pswitch_1f
    const/16 v3, 0xff

    .line 2089
    const/16 v1, 0xff

    .line 2090
    goto/16 :goto_0

    .line 2092
    :pswitch_20
    const/16 v3, 0xff

    .line 2093
    const/16 v1, 0xff

    .line 2094
    goto/16 :goto_0

    .line 2098
    :cond_2
    const/4 v3, -0x1

    .line 2099
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1950
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2000
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 2050
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5167
    const/4 v3, 0x0

    .line 5168
    .local v3, "min":I
    const/4 v1, 0x0

    .line 5170
    .local v1, "max":I
    const/4 v0, 0x0

    .line 5172
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 5175
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 5178
    if-nez p1, :cond_0

    .line 5180
    packed-switch v0, :pswitch_data_0

    .line 5332
    :goto_0
    aput v1, v2, v4

    .line 5333
    aput v3, v2, v5

    .line 5335
    return-object v2

    .line 5182
    :pswitch_0
    const/16 v3, 0xff

    .line 5183
    const/16 v1, 0xff

    .line 5184
    goto :goto_0

    .line 5186
    :pswitch_1
    const/16 v3, 0xcc

    .line 5187
    const/16 v1, 0xcf

    .line 5188
    goto :goto_0

    .line 5190
    :pswitch_2
    const/16 v3, 0xcc

    .line 5191
    const/16 v1, 0xd1

    .line 5192
    goto :goto_0

    .line 5194
    :pswitch_3
    const/16 v3, 0xcc

    .line 5195
    const/16 v1, 0xd3

    .line 5196
    goto :goto_0

    .line 5198
    :pswitch_4
    const/16 v3, 0xcc

    .line 5199
    const/16 v1, 0xd5

    .line 5200
    goto :goto_0

    .line 5202
    :pswitch_5
    const/16 v3, 0xcc

    .line 5203
    const/16 v1, 0xd8

    .line 5204
    goto :goto_0

    .line 5206
    :pswitch_6
    const/16 v3, 0xff

    .line 5207
    const/16 v1, 0xff

    .line 5208
    goto :goto_0

    .line 5210
    :pswitch_7
    const/16 v3, 0xff

    .line 5211
    const/16 v1, 0xff

    .line 5212
    goto :goto_0

    .line 5214
    :pswitch_8
    const/16 v3, 0xff

    .line 5215
    const/16 v1, 0xff

    .line 5216
    goto :goto_0

    .line 5218
    :pswitch_9
    const/16 v3, 0xff

    .line 5219
    const/16 v1, 0xff

    .line 5220
    goto :goto_0

    .line 5222
    :pswitch_a
    const/16 v3, 0xff

    .line 5223
    const/16 v1, 0xff

    .line 5224
    goto :goto_0

    .line 5228
    :cond_0
    if-ne p1, v5, :cond_1

    .line 5230
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 5232
    :pswitch_b
    const/16 v3, 0xff

    .line 5233
    const/16 v1, 0xff

    .line 5234
    goto :goto_0

    .line 5236
    :pswitch_c
    const/16 v3, 0xcc

    .line 5237
    const/16 v1, 0xcf

    .line 5238
    goto :goto_0

    .line 5240
    :pswitch_d
    const/16 v3, 0xcc

    .line 5241
    const/16 v1, 0xd0

    .line 5242
    goto :goto_0

    .line 5244
    :pswitch_e
    const/16 v3, 0xcc

    .line 5245
    const/16 v1, 0xd3

    .line 5246
    goto :goto_0

    .line 5248
    :pswitch_f
    const/16 v3, 0xcc

    .line 5249
    const/16 v1, 0xd5

    .line 5250
    goto :goto_0

    .line 5252
    :pswitch_10
    const/16 v3, 0xcc

    .line 5253
    const/16 v1, 0xd8

    .line 5254
    goto :goto_0

    .line 5256
    :pswitch_11
    const/16 v3, 0xfe

    .line 5257
    const/16 v1, 0xfe

    .line 5258
    goto :goto_0

    .line 5260
    :pswitch_12
    const/16 v3, 0xfe

    .line 5261
    const/16 v1, 0xfe

    .line 5262
    goto :goto_0

    .line 5264
    :pswitch_13
    const/16 v3, 0xfe

    .line 5265
    const/16 v1, 0xfe

    .line 5266
    goto :goto_0

    .line 5268
    :pswitch_14
    const/16 v3, 0xfe

    .line 5269
    const/16 v1, 0xfe

    .line 5270
    goto :goto_0

    .line 5272
    :pswitch_15
    const/16 v3, 0xfe

    .line 5273
    const/16 v1, 0xfe

    .line 5274
    goto :goto_0

    .line 5278
    :cond_1
    if-ne p1, v6, :cond_2

    .line 5280
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 5282
    :pswitch_16
    const/16 v3, 0xff

    .line 5283
    const/16 v1, 0xff

    .line 5284
    goto/16 :goto_0

    .line 5286
    :pswitch_17
    const/16 v3, 0xcc

    .line 5287
    const/16 v1, 0xcf

    .line 5288
    goto/16 :goto_0

    .line 5290
    :pswitch_18
    const/16 v3, 0xcc

    .line 5291
    const/16 v1, 0xd0

    .line 5292
    goto/16 :goto_0

    .line 5294
    :pswitch_19
    const/16 v3, 0xcc

    .line 5295
    const/16 v1, 0xd2

    .line 5296
    goto/16 :goto_0

    .line 5298
    :pswitch_1a
    const/16 v3, 0xcc

    .line 5299
    const/16 v1, 0xd3

    .line 5300
    goto/16 :goto_0

    .line 5302
    :pswitch_1b
    const/16 v3, 0xcc

    .line 5303
    const/16 v1, 0xd4

    .line 5304
    goto/16 :goto_0

    .line 5306
    :pswitch_1c
    const/16 v3, 0xff

    .line 5307
    const/16 v1, 0xff

    .line 5308
    goto/16 :goto_0

    .line 5310
    :pswitch_1d
    const/16 v3, 0xff

    .line 5311
    const/16 v1, 0xff

    .line 5312
    goto/16 :goto_0

    .line 5314
    :pswitch_1e
    const/16 v3, 0xff

    .line 5315
    const/16 v1, 0xff

    .line 5316
    goto/16 :goto_0

    .line 5318
    :pswitch_1f
    const/16 v3, 0xff

    .line 5319
    const/16 v1, 0xff

    .line 5320
    goto/16 :goto_0

    .line 5322
    :pswitch_20
    const/16 v3, 0xff

    .line 5323
    const/16 v1, 0xff

    .line 5324
    goto/16 :goto_0

    .line 5328
    :cond_2
    const/4 v3, -0x1

    .line 5329
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 5180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 5230
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 5280
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YR_DMC(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1765
    const/4 v3, 0x0

    .line 1766
    .local v3, "min":I
    const/4 v1, 0x0

    .line 1768
    .local v1, "max":I
    const/4 v0, 0x0

    .line 1770
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 1773
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 1776
    if-nez p1, :cond_0

    .line 1778
    packed-switch v0, :pswitch_data_0

    .line 1930
    :goto_0
    aput v1, v2, v4

    .line 1931
    aput v3, v2, v5

    .line 1933
    return-object v2

    .line 1780
    :pswitch_0
    const/16 v3, 0xff

    .line 1781
    const/16 v1, 0xff

    .line 1782
    goto :goto_0

    .line 1784
    :pswitch_1
    const/16 v3, 0xfe

    .line 1785
    const/16 v1, 0xfe

    .line 1786
    goto :goto_0

    .line 1788
    :pswitch_2
    const/16 v3, 0xfe

    .line 1789
    const/16 v1, 0xfe

    .line 1790
    goto :goto_0

    .line 1792
    :pswitch_3
    const/16 v3, 0xfe

    .line 1793
    const/16 v1, 0xfe

    .line 1794
    goto :goto_0

    .line 1796
    :pswitch_4
    const/16 v3, 0xfe

    .line 1797
    const/16 v1, 0xfe

    .line 1798
    goto :goto_0

    .line 1800
    :pswitch_5
    const/16 v3, 0xfe

    .line 1801
    const/16 v1, 0xfe

    .line 1802
    goto :goto_0

    .line 1804
    :pswitch_6
    const/16 v3, 0xfe

    .line 1805
    const/16 v1, 0xfe

    .line 1806
    goto :goto_0

    .line 1808
    :pswitch_7
    const/16 v3, 0xfe

    .line 1809
    const/16 v1, 0xfe

    .line 1810
    goto :goto_0

    .line 1812
    :pswitch_8
    const/16 v3, 0xfe

    .line 1813
    const/16 v1, 0xfe

    .line 1814
    goto :goto_0

    .line 1816
    :pswitch_9
    const/16 v3, 0xfe

    .line 1817
    const/16 v1, 0xfe

    .line 1818
    goto :goto_0

    .line 1820
    :pswitch_a
    const/16 v3, 0xfe

    .line 1821
    const/16 v1, 0xfe

    .line 1822
    goto :goto_0

    .line 1826
    :cond_0
    if-ne p1, v5, :cond_1

    .line 1828
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1830
    :pswitch_b
    const/16 v3, 0xff

    .line 1831
    const/16 v1, 0xff

    .line 1832
    goto :goto_0

    .line 1834
    :pswitch_c
    const/16 v3, 0xff

    .line 1835
    const/16 v1, 0xff

    .line 1836
    goto :goto_0

    .line 1838
    :pswitch_d
    const/16 v3, 0xff

    .line 1839
    const/16 v1, 0xff

    .line 1840
    goto :goto_0

    .line 1842
    :pswitch_e
    const/16 v3, 0xff

    .line 1843
    const/16 v1, 0xff

    .line 1844
    goto :goto_0

    .line 1846
    :pswitch_f
    const/16 v3, 0xff

    .line 1847
    const/16 v1, 0xff

    .line 1848
    goto :goto_0

    .line 1850
    :pswitch_10
    const/16 v3, 0xff

    .line 1851
    const/16 v1, 0xff

    .line 1852
    goto :goto_0

    .line 1854
    :pswitch_11
    const/16 v3, 0xff

    .line 1855
    const/16 v1, 0xff

    .line 1856
    goto :goto_0

    .line 1858
    :pswitch_12
    const/16 v3, 0xff

    .line 1859
    const/16 v1, 0xff

    .line 1860
    goto :goto_0

    .line 1862
    :pswitch_13
    const/16 v3, 0xff

    .line 1863
    const/16 v1, 0xff

    .line 1864
    goto :goto_0

    .line 1866
    :pswitch_14
    const/16 v3, 0xff

    .line 1867
    const/16 v1, 0xff

    .line 1868
    goto :goto_0

    .line 1870
    :pswitch_15
    const/16 v3, 0xff

    .line 1871
    const/16 v1, 0xff

    .line 1872
    goto :goto_0

    .line 1876
    :cond_1
    if-ne p1, v6, :cond_2

    .line 1878
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1880
    :pswitch_16
    const/16 v3, 0xff

    .line 1881
    const/16 v1, 0xff

    .line 1882
    goto/16 :goto_0

    .line 1884
    :pswitch_17
    const/16 v3, 0xff

    .line 1885
    const/16 v1, 0xff

    .line 1886
    goto/16 :goto_0

    .line 1888
    :pswitch_18
    const/16 v3, 0xff

    .line 1889
    const/16 v1, 0xff

    .line 1890
    goto/16 :goto_0

    .line 1892
    :pswitch_19
    const/16 v3, 0xff

    .line 1893
    const/16 v1, 0xff

    .line 1894
    goto/16 :goto_0

    .line 1896
    :pswitch_1a
    const/16 v3, 0xff

    .line 1897
    const/16 v1, 0xff

    .line 1898
    goto/16 :goto_0

    .line 1900
    :pswitch_1b
    const/16 v3, 0xff

    .line 1901
    const/16 v1, 0xff

    .line 1902
    goto/16 :goto_0

    .line 1904
    :pswitch_1c
    const/16 v3, 0xff

    .line 1905
    const/16 v1, 0xff

    .line 1906
    goto/16 :goto_0

    .line 1908
    :pswitch_1d
    const/16 v3, 0xff

    .line 1909
    const/16 v1, 0xff

    .line 1910
    goto/16 :goto_0

    .line 1912
    :pswitch_1e
    const/16 v3, 0xff

    .line 1913
    const/16 v1, 0xff

    .line 1914
    goto/16 :goto_0

    .line 1916
    :pswitch_1f
    const/16 v3, 0xff

    .line 1917
    const/16 v1, 0xff

    .line 1918
    goto/16 :goto_0

    .line 1920
    :pswitch_20
    const/16 v3, 0xff

    .line 1921
    const/16 v1, 0xff

    .line 1922
    goto/16 :goto_0

    .line 1926
    :cond_2
    const/4 v3, -0x1

    .line 1927
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1778
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1828
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 1878
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I
    .locals 8
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4995
    const/4 v3, 0x0

    .line 4996
    .local v3, "min":I
    const/4 v1, 0x0

    .line 4998
    .local v1, "max":I
    const/4 v0, 0x0

    .line 5000
    .local v0, "integerSeverity":I
    new-array v2, v6, [I

    .line 5003
    .local v2, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 5006
    if-nez p1, :cond_0

    .line 5008
    packed-switch v0, :pswitch_data_0

    .line 5160
    :goto_0
    aput v1, v2, v4

    .line 5161
    aput v3, v2, v5

    .line 5163
    return-object v2

    .line 5010
    :pswitch_0
    const/16 v3, 0xff

    .line 5011
    const/16 v1, 0xff

    .line 5012
    goto :goto_0

    .line 5014
    :pswitch_1
    const/16 v3, 0xcc

    .line 5015
    const/16 v1, 0xc2

    .line 5016
    goto :goto_0

    .line 5018
    :pswitch_2
    const/16 v3, 0xcc

    .line 5019
    const/16 v1, 0xbc

    .line 5020
    goto :goto_0

    .line 5022
    :pswitch_3
    const/16 v3, 0xcc

    .line 5023
    const/16 v1, 0xb5

    .line 5024
    goto :goto_0

    .line 5026
    :pswitch_4
    const/16 v3, 0xcc

    .line 5027
    const/16 v1, 0xad

    .line 5028
    goto :goto_0

    .line 5030
    :pswitch_5
    const/16 v3, 0xcc

    .line 5031
    const/16 v1, 0xa4

    .line 5032
    goto :goto_0

    .line 5034
    :pswitch_6
    const/16 v3, 0xfe

    .line 5035
    const/16 v1, 0xfe

    .line 5036
    goto :goto_0

    .line 5038
    :pswitch_7
    const/16 v3, 0xfe

    .line 5039
    const/16 v1, 0xfe

    .line 5040
    goto :goto_0

    .line 5042
    :pswitch_8
    const/16 v3, 0xfe

    .line 5043
    const/16 v1, 0xfe

    .line 5044
    goto :goto_0

    .line 5046
    :pswitch_9
    const/16 v3, 0xfe

    .line 5047
    const/16 v1, 0xfe

    .line 5048
    goto :goto_0

    .line 5050
    :pswitch_a
    const/16 v3, 0xfe

    .line 5051
    const/16 v1, 0xfe

    .line 5052
    goto :goto_0

    .line 5056
    :cond_0
    if-ne p1, v5, :cond_1

    .line 5058
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 5060
    :pswitch_b
    const/16 v3, 0xff

    .line 5061
    const/16 v1, 0xff

    .line 5062
    goto :goto_0

    .line 5064
    :pswitch_c
    const/16 v3, 0xcc

    .line 5065
    const/16 v1, 0xc0

    .line 5066
    goto :goto_0

    .line 5068
    :pswitch_d
    const/16 v3, 0xcc

    .line 5069
    const/16 v1, 0xba

    .line 5070
    goto :goto_0

    .line 5072
    :pswitch_e
    const/16 v3, 0xcc

    .line 5073
    const/16 v1, 0xb3

    .line 5074
    goto :goto_0

    .line 5076
    :pswitch_f
    const/16 v3, 0xcc

    .line 5077
    const/16 v1, 0xab

    .line 5078
    goto :goto_0

    .line 5080
    :pswitch_10
    const/16 v3, 0xcc

    .line 5081
    const/16 v1, 0xa2

    .line 5082
    goto :goto_0

    .line 5084
    :pswitch_11
    const/16 v3, 0xff

    .line 5085
    const/16 v1, 0xff

    .line 5086
    goto :goto_0

    .line 5088
    :pswitch_12
    const/16 v3, 0xff

    .line 5089
    const/16 v1, 0xff

    .line 5090
    goto :goto_0

    .line 5092
    :pswitch_13
    const/16 v3, 0xff

    .line 5093
    const/16 v1, 0xff

    .line 5094
    goto :goto_0

    .line 5096
    :pswitch_14
    const/16 v3, 0xff

    .line 5097
    const/16 v1, 0xff

    .line 5098
    goto :goto_0

    .line 5100
    :pswitch_15
    const/16 v3, 0xff

    .line 5101
    const/16 v1, 0xff

    .line 5102
    goto :goto_0

    .line 5106
    :cond_1
    if-ne p1, v6, :cond_2

    .line 5108
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 5110
    :pswitch_16
    const/16 v3, 0xff

    .line 5111
    const/16 v1, 0xff

    .line 5112
    goto/16 :goto_0

    .line 5114
    :pswitch_17
    const/16 v3, 0xcc

    .line 5115
    const/16 v1, 0xc7

    .line 5116
    goto/16 :goto_0

    .line 5118
    :pswitch_18
    const/16 v3, 0xcc

    .line 5119
    const/16 v1, 0xc5

    .line 5120
    goto/16 :goto_0

    .line 5122
    :pswitch_19
    const/16 v3, 0xcc

    .line 5123
    const/16 v1, 0xc3

    .line 5124
    goto/16 :goto_0

    .line 5126
    :pswitch_1a
    const/16 v3, 0xcc

    .line 5127
    const/16 v1, 0xc2

    .line 5128
    goto/16 :goto_0

    .line 5130
    :pswitch_1b
    const/16 v3, 0xcc

    .line 5131
    const/16 v1, 0xc1

    .line 5132
    goto/16 :goto_0

    .line 5134
    :pswitch_1c
    const/16 v3, 0xff

    .line 5135
    const/16 v1, 0xff

    .line 5136
    goto/16 :goto_0

    .line 5138
    :pswitch_1d
    const/16 v3, 0xff

    .line 5139
    const/16 v1, 0xff

    .line 5140
    goto/16 :goto_0

    .line 5142
    :pswitch_1e
    const/16 v3, 0xff

    .line 5143
    const/16 v1, 0xff

    .line 5144
    goto/16 :goto_0

    .line 5146
    :pswitch_1f
    const/16 v3, 0xff

    .line 5147
    const/16 v1, 0xff

    .line 5148
    goto/16 :goto_0

    .line 5150
    :pswitch_20
    const/16 v3, 0xff

    .line 5151
    const/16 v1, 0xff

    .line 5152
    goto/16 :goto_0

    .line 5156
    :cond_2
    const/4 v3, -0x1

    .line 5157
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 5008
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 5058
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 5108
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private roundHalfUp(D)I
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 6551
    const/4 v0, 0x0

    .line 6553
    .local v0, "roundedValue":I
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v2

    .line 6554
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 6556
    return v0
.end method


# virtual methods
.method public getColorTransferValue_DMC(IIIDD)I
    .locals 12
    .param p1, "firstColor"    # I
    .param p2, "secondColor"    # I
    .param p3, "CVDType"    # I
    .param p4, "severity"    # D
    .param p6, "userParameter"    # D

    .prologue
    .line 97
    const/4 v11, 0x0

    .line 100
    .local v11, "value":I
    const/4 v10, 0x0

    .line 101
    .local v10, "maxMin":[I
    const/4 v9, 0x0

    .line 102
    .local v9, "integerUserParamter":I
    const/4 v8, 0x0

    .line 106
    .local v8, "difference":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 107
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 108
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_DMC(IDD)[I

    move-result-object v10

    .line 185
    .end local v10    # "maxMin":[I
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x1

    aget v2, v10, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 186
    :cond_1
    const/4 v2, -0x1

    return v2

    .line 110
    .restart local v10    # "maxMin":[I
    :cond_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 111
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 113
    .local v10, "maxMin":[I
    :cond_3
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 114
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 118
    .local v10, "maxMin":[I
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    .line 119
    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 120
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 122
    .local v10, "maxMin":[I
    :cond_5
    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 123
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 125
    .local v10, "maxMin":[I
    :cond_6
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 126
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 130
    .local v10, "maxMin":[I
    :cond_7
    const/4 v2, 0x3

    if-ne p1, v2, :cond_a

    .line 131
    const/4 v2, 0x1

    if-ne p2, v2, :cond_8

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 132
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 134
    .local v10, "maxMin":[I
    :cond_8
    const/4 v2, 0x3

    if-ne p2, v2, :cond_9

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 135
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 137
    .local v10, "maxMin":[I
    :cond_9
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 138
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 142
    .local v10, "maxMin":[I
    :cond_a
    const/4 v2, 0x4

    if-ne p1, v2, :cond_d

    .line 143
    const/4 v2, 0x1

    if-ne p2, v2, :cond_b

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 144
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 146
    .local v10, "maxMin":[I
    :cond_b
    const/4 v2, 0x3

    if-ne p2, v2, :cond_c

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 147
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 149
    .local v10, "maxMin":[I
    :cond_c
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 150
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 154
    .local v10, "maxMin":[I
    :cond_d
    const/4 v2, 0x5

    if-ne p1, v2, :cond_10

    .line 155
    const/4 v2, 0x1

    if-ne p2, v2, :cond_e

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 156
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 158
    .local v10, "maxMin":[I
    :cond_e
    const/4 v2, 0x3

    if-ne p2, v2, :cond_f

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 159
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 161
    .local v10, "maxMin":[I
    :cond_f
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 162
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 166
    .local v10, "maxMin":[I
    :cond_10
    const/4 v2, 0x6

    if-ne p1, v2, :cond_13

    .line 167
    const/4 v2, 0x1

    if-ne p2, v2, :cond_11

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 168
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 170
    .local v10, "maxMin":[I
    :cond_11
    const/4 v2, 0x3

    if-ne p2, v2, :cond_12

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 171
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 173
    .local v10, "maxMin":[I
    :cond_12
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 174
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_DMC(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 179
    .local v10, "maxMin":[I
    :cond_13
    const/4 v2, 0x2

    new-array v10, v2, [I

    .line 180
    .local v10, "maxMin":[I
    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v10, v3

    .line 181
    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v10, v3

    goto/16 :goto_0

    .line 190
    .end local v10    # "maxMin":[I
    :cond_14
    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    sub-int v8, v2, v3

    .line 193
    move-wide/from16 v0, p6

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v9

    .line 197
    int-to-double v2, v8

    int-to-double v4, v9

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget v4, v10, v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v11, v2

    .line 200
    return v11
.end method

.method public getColorTransferValue_Hybrid(IIIDD)I
    .locals 12
    .param p1, "firstColor"    # I
    .param p2, "secondColor"    # I
    .param p3, "CVDType"    # I
    .param p4, "severity"    # D
    .param p6, "userParameter"    # D

    .prologue
    .line 3327
    const/4 v11, 0x0

    .line 3330
    .local v11, "value":I
    const/4 v10, 0x0

    .line 3331
    .local v10, "maxMin":[I
    const/4 v9, 0x0

    .line 3332
    .local v9, "integerUserParamter":I
    const/4 v8, 0x0

    .line 3336
    .local v8, "difference":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 3337
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3338
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I

    move-result-object v10

    .line 3415
    .end local v10    # "maxMin":[I
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x1

    aget v2, v10, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 3416
    :cond_1
    const/4 v2, -0x1

    return v2

    .line 3340
    .restart local v10    # "maxMin":[I
    :cond_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3341
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 3343
    .local v10, "maxMin":[I
    :cond_3
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3344
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 3348
    .local v10, "maxMin":[I
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    .line 3349
    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3350
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 3352
    .local v10, "maxMin":[I
    :cond_5
    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3353
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 3355
    .local v10, "maxMin":[I
    :cond_6
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3356
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 3360
    .local v10, "maxMin":[I
    :cond_7
    const/4 v2, 0x3

    if-ne p1, v2, :cond_a

    .line 3361
    const/4 v2, 0x1

    if-ne p2, v2, :cond_8

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3362
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 3364
    .local v10, "maxMin":[I
    :cond_8
    const/4 v2, 0x3

    if-ne p2, v2, :cond_9

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3365
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto :goto_0

    .line 3367
    .local v10, "maxMin":[I
    :cond_9
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3368
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 3372
    .local v10, "maxMin":[I
    :cond_a
    const/4 v2, 0x4

    if-ne p1, v2, :cond_d

    .line 3373
    const/4 v2, 0x1

    if-ne p2, v2, :cond_b

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3374
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 3376
    .local v10, "maxMin":[I
    :cond_b
    const/4 v2, 0x3

    if-ne p2, v2, :cond_c

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3377
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 3379
    .local v10, "maxMin":[I
    :cond_c
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3380
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 3384
    .local v10, "maxMin":[I
    :cond_d
    const/4 v2, 0x5

    if-ne p1, v2, :cond_10

    .line 3385
    const/4 v2, 0x1

    if-ne p2, v2, :cond_e

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3386
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 3388
    .local v10, "maxMin":[I
    :cond_e
    const/4 v2, 0x3

    if-ne p2, v2, :cond_f

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3389
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 3391
    .local v10, "maxMin":[I
    :cond_f
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3392
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 3396
    .local v10, "maxMin":[I
    :cond_10
    const/4 v2, 0x6

    if-ne p1, v2, :cond_13

    .line 3397
    const/4 v2, 0x1

    if-ne p2, v2, :cond_11

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3398
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 3400
    .local v10, "maxMin":[I
    :cond_11
    const/4 v2, 0x3

    if-ne p2, v2, :cond_12

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3401
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 3403
    .local v10, "maxMin":[I
    :cond_12
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 3404
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I

    move-result-object v10

    .local v10, "maxMin":[I
    goto/16 :goto_0

    .line 3409
    .local v10, "maxMin":[I
    :cond_13
    const/4 v2, 0x2

    new-array v10, v2, [I

    .line 3410
    .local v10, "maxMin":[I
    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v10, v3

    .line 3411
    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v10, v3

    goto/16 :goto_0

    .line 3420
    .end local v10    # "maxMin":[I
    :cond_14
    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    sub-int v8, v2, v3

    .line 3423
    move-wide/from16 v0, p6

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v9

    .line 3427
    int-to-double v2, v8

    int-to-double v4, v9

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget v4, v10, v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v11, v2

    .line 3430
    return v11
.end method
