.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_4G:[[I

.field static final DATA_4G_PLUS:[[I

.field static final DATA_ACTIVITY_ATT:[I

.field static final DATA_ACTIVITY_DEFAULT:[I

.field static final DATA_ACTIVITY_LTE_PLUS:[I

.field static final DATA_ACTIVITY_LTE_PLUS_KT:[I

.field static final DATA_ACTIVITY_TMO:[I

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_LTE:[[I

.field static final DC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_CU:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_USCC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_HALF_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field public static final PreferredSimIcon:[I

.field static final QS_TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

.field static final QS_TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final ROAMING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

.field static final TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH_TWO_LINE:[I

.field static final TELEPHONY_CTC_SIGNAL_STRENGTH:[I

.field static final TELEPHONY_CTC_SIGNAL_STRENGTH_TWO_LINE:[I

.field static final TELEPHONY_NO_NETWORK:I

.field static final TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_5_LEVEL_STRENGTH_FOCUS:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FOCUS:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TWO_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    .line 115
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonyNoServiceIcon()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 119
    const v1, 0x7f020611

    .line 120
    const v2, 0x7f020614

    .line 121
    const v3, 0x7f020617

    .line 122
    const v4, 0x7f02061a

    .line 123
    const v5, 0x7f02061d

    .line 119
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 124
    const v1, 0x7f020611

    .line 125
    const v2, 0x7f020614

    .line 126
    const v3, 0x7f020617

    .line 127
    const v4, 0x7f02061a

    .line 128
    const v5, 0x7f02061d

    .line 124
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 118
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 133
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 139
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 132
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 150
    const v1, 0x7f020676

    .line 151
    const v2, 0x7f020678

    .line 152
    const v3, 0x7f02067a

    .line 153
    const v4, 0x7f02067c

    .line 154
    const v5, 0x7f02067e

    .line 150
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 155
    const v1, 0x7f020676

    .line 156
    const v2, 0x7f020678

    .line 157
    const v3, 0x7f02067a

    .line 158
    const v4, 0x7f02067c

    .line 159
    const v5, 0x7f02067e

    .line 155
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 149
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[[I

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 165
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 171
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 164
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_5_LEVEL_STRENGTH_FOCUS:[[I

    .line 181
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 182
    const v1, 0x7f0206b8

    .line 183
    const v2, 0x7f0206ba

    .line 184
    const v3, 0x7f0206bc

    .line 185
    const v4, 0x7f0206be

    .line 186
    const v5, 0x7f0206c0

    .line 182
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 187
    const v1, 0x7f0206ac

    .line 188
    const v2, 0x7f0206ae

    .line 189
    const v3, 0x7f0206b0

    .line 190
    const v4, 0x7f0206b2

    .line 191
    const v5, 0x7f0206b4

    .line 187
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 181
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

    .line 197
    const v0, 0x7f02062d

    .line 198
    const v1, 0x7f02062e

    .line 199
    const v2, 0x7f02062f

    .line 200
    const v3, 0x7f020630

    .line 201
    const v4, 0x7f020631

    .line 196
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH:[I

    .line 204
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH:[I

    .line 213
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH_TWO_LINE:[I

    .line 241
    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH_TWO_LINE:[I

    .line 283
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 284
    const v1, 0x7f0201c6

    .line 285
    const v2, 0x7f0201c7

    .line 286
    const v3, 0x7f0201c9

    .line 287
    const v4, 0x7f0201ca

    .line 288
    const v5, 0x7f0201cc

    .line 284
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 289
    const v1, 0x7f0201d3

    .line 290
    const v2, 0x7f0201d4

    .line 291
    const v3, 0x7f0201d5

    .line 292
    const v4, 0x7f0201d6

    .line 293
    const v5, 0x7f0201d7

    .line 289
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 283
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 296
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 297
    const v1, 0x7f020611

    .line 298
    const v2, 0x7f020614

    .line 299
    const v3, 0x7f020617

    .line 300
    const v4, 0x7f02061a

    .line 301
    const v5, 0x7f02061d

    .line 297
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 302
    const v1, 0x7f020611

    .line 303
    const v2, 0x7f020614

    .line 304
    const v3, 0x7f020617

    .line 305
    const v4, 0x7f02061a

    .line 306
    const v5, 0x7f02061d

    .line 302
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 296
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 310
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 311
    const v1, 0x7f02062c

    .line 312
    const v2, 0x7f02062c

    .line 313
    const v3, 0x7f02062c

    .line 314
    const v4, 0x7f02062c

    .line 315
    const v5, 0x7f02062c

    .line 311
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 316
    const v1, 0x7f02062c

    .line 317
    const v2, 0x7f02062c

    .line 318
    const v3, 0x7f02062c

    .line 319
    const v4, 0x7f02062c

    .line 320
    const v5, 0x7f02062c

    .line 316
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 310
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    .line 323
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 324
    const v1, 0x7f0201d0

    .line 325
    const v2, 0x7f0201d0

    .line 326
    const v3, 0x7f0201d0

    .line 327
    const v4, 0x7f0201d0

    .line 328
    const v5, 0x7f0201d0

    .line 324
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 329
    const v1, 0x7f0201d0

    .line 330
    const v2, 0x7f0201d0

    .line 331
    const v3, 0x7f0201d0

    .line 332
    const v4, 0x7f0201d0

    .line 333
    const v5, 0x7f0201d0

    .line 329
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 323
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    .line 341
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 342
    const v1, 0x7f0205bb

    .line 343
    const v2, 0x7f0205bb

    .line 344
    const v3, 0x7f0205bb

    .line 345
    const v4, 0x7f0205bb

    .line 342
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 346
    const v1, 0x7f0205bb

    .line 347
    const v2, 0x7f0205bb

    .line 348
    const v3, 0x7f0205bb

    .line 349
    const v4, 0x7f0205bb

    .line 346
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 341
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    .line 354
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 355
    const v1, 0x7f0205ad

    .line 356
    const v2, 0x7f0205ad

    .line 357
    const v3, 0x7f0205ad

    .line 358
    const v4, 0x7f0205ad

    .line 355
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 359
    const v1, 0x7f0205ad

    .line 360
    const v2, 0x7f0205ad

    .line 361
    const v3, 0x7f0205ad

    .line 362
    const v4, 0x7f0205ad

    .line 359
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 354
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    .line 367
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 368
    const v1, 0x7f0205ba

    .line 369
    const v2, 0x7f0205ba

    .line 370
    const v3, 0x7f0205ba

    .line 371
    const v4, 0x7f0205ba

    .line 368
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 372
    const v1, 0x7f0205ba

    .line 373
    const v2, 0x7f0205ba

    .line 374
    const v3, 0x7f0205ba

    .line 375
    const v4, 0x7f0205ba

    .line 372
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 367
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    .line 381
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 382
    const v1, 0x7f0205bc

    .line 383
    const v2, 0x7f0205bc

    .line 384
    const v3, 0x7f0205bc

    .line 385
    const v4, 0x7f0205bc

    .line 382
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 386
    const v1, 0x7f0205bc

    .line 387
    const v2, 0x7f0205bc

    .line 388
    const v3, 0x7f0205bc

    .line 389
    const v4, 0x7f0205bc

    .line 386
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 381
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    .line 396
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 397
    const v1, 0x7f0205aa

    .line 398
    const v2, 0x7f0205aa

    .line 399
    const v3, 0x7f0205aa

    .line 400
    const v4, 0x7f0205aa

    .line 397
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 401
    const v1, 0x7f0205aa

    .line 402
    const v2, 0x7f0205aa

    .line 403
    const v3, 0x7f0205aa

    .line 404
    const v4, 0x7f0205aa

    .line 401
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 396
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    .line 410
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 411
    const v1, 0x7f0205b2

    .line 412
    const v2, 0x7f0205b2

    .line 413
    const v3, 0x7f0205b2

    .line 414
    const v4, 0x7f0205b2

    .line 411
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 415
    const v1, 0x7f0205b2

    .line 416
    const v2, 0x7f0205b2

    .line 417
    const v3, 0x7f0205b2

    .line 418
    const v4, 0x7f0205b2

    .line 415
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 410
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    .line 423
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 424
    const v1, 0x7f0205b5

    .line 425
    const v2, 0x7f0205b5

    .line 426
    const v3, 0x7f0205b5

    .line 427
    const v4, 0x7f0205b5

    .line 424
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 428
    const v1, 0x7f0205b5

    .line 429
    const v2, 0x7f0205b5

    .line 430
    const v3, 0x7f0205b5

    .line 431
    const v4, 0x7f0205b5

    .line 428
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 423
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    .line 437
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 438
    const v1, 0x7f0205be

    .line 439
    const v2, 0x7f0205be

    .line 440
    const v3, 0x7f0205be

    .line 441
    const v4, 0x7f0205be

    .line 438
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 442
    const v1, 0x7f0205be

    .line 443
    const v2, 0x7f0205be

    .line 444
    const v3, 0x7f0205be

    .line 445
    const v4, 0x7f0205be

    .line 442
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 437
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    .line 498
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 499
    const-string/jumbo v1, "CARRIER_NETWORK_CHANGE"

    .line 500
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    .line 501
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    .line 502
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 506
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 503
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 504
    const v7, 0x7f02062c

    .line 505
    const v8, 0x7f0201d0

    .line 507
    const v10, 0x7f0f02e4

    .line 508
    const/4 v11, 0x0

    .line 509
    const/4 v12, 0x0

    .line 510
    const/4 v13, 0x0

    .line 498
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 513
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 514
    const-string/jumbo v1, "3G"

    .line 516
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 517
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 518
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 520
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 522
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 519
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 521
    const v8, 0x7f0201dc

    .line 523
    const v10, 0x7f0f02d4

    .line 524
    const v11, 0x7f0205ad

    .line 525
    const/4 v12, 0x1

    .line 526
    const v13, 0x7f0201cb

    .line 528
    const v14, 0x7f0205ee

    .line 513
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 531
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 532
    const-string/jumbo v1, "WFC"

    .line 534
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 535
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 536
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 538
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 540
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 537
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 539
    const v8, 0x7f0201dc

    .line 541
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 531
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 544
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 545
    const-string/jumbo v1, "Unknown"

    .line 547
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 548
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 549
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 551
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 553
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 550
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 552
    const v8, 0x7f0201dc

    .line 554
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 556
    const v14, 0x7f0205fb

    .line 544
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 559
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 560
    const-string/jumbo v1, "E"

    .line 562
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 563
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 564
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 566
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 568
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 565
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 567
    const v8, 0x7f0201dc

    .line 569
    const v10, 0x7f0f02db

    .line 570
    const v11, 0x7f0205ba

    .line 571
    const/4 v12, 0x0

    .line 572
    const v13, 0x7f0201d2

    .line 574
    const v14, 0x7f0205f4

    .line 559
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 577
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 578
    const-string/jumbo v1, "1X"

    .line 580
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 581
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 582
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 584
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 586
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 583
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 585
    const v8, 0x7f0201dc

    .line 587
    const v10, 0x7f0f02d9

    .line 588
    const v11, 0x7f0205aa

    .line 589
    const/4 v12, 0x1

    .line 590
    const v13, 0x7f0201c8

    .line 592
    const v14, 0x7f0205ec

    .line 577
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 595
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 596
    const-string/jumbo v1, "G"

    .line 598
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 599
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 600
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 602
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 604
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 601
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 603
    const v8, 0x7f0201dc

    .line 605
    const v10, 0x7f0f02d1

    .line 606
    const v11, 0x7f0205bb

    .line 607
    const/4 v12, 0x0

    .line 608
    const v13, 0x7f0201d8

    .line 610
    const v14, 0x7f0205f5

    .line 595
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 613
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 614
    const-string/jumbo v1, "H"

    .line 616
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 617
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 618
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 620
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 622
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 619
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 621
    const v8, 0x7f0201dc

    .line 623
    const v10, 0x7f0f02d5

    .line 624
    const v11, 0x7f0205bc

    .line 625
    const/4 v12, 0x0

    .line 626
    const v13, 0x7f0201d9

    .line 628
    const v14, 0x7f0205f6

    .line 613
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 631
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 632
    const-string/jumbo v1, "4G"

    .line 634
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 635
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 636
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 638
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 640
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 637
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 639
    const v8, 0x7f0201dc

    .line 641
    const v10, 0x7f0f02d6

    .line 642
    const v11, 0x7f0205b2

    .line 643
    const/4 v12, 0x1

    .line 644
    const v13, 0x7f0201cd

    .line 646
    const v14, 0x7f0205f1

    .line 631
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 649
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 650
    const-string/jumbo v1, "4G+"

    .line 652
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 653
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 654
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 656
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 658
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 655
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 657
    const v8, 0x7f0201dc

    .line 659
    const v10, 0x7f0f02d7

    .line 660
    const v11, 0x7f0205b5

    .line 661
    const/4 v12, 0x1

    .line 662
    const v13, 0x7f0201ce

    .line 664
    const v14, 0x7f0205f2

    .line 649
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 667
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 668
    const-string/jumbo v1, "LTE"

    .line 670
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 671
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 672
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 674
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 676
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 673
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 675
    const v8, 0x7f0201dc

    .line 677
    const v10, 0x7f0f02d8

    .line 678
    const v11, 0x7f0205be

    .line 679
    const/4 v12, 0x1

    .line 680
    const v13, 0x7f0201db

    .line 682
    const v14, 0x7f0205f8

    .line 667
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 685
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 686
    const-string/jumbo v1, "Roaming"

    .line 687
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 688
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 689
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 691
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 693
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 690
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 692
    const v8, 0x7f0201dc

    .line 694
    const v10, 0x7f0f02da

    .line 695
    const v11, 0x7f0205c4

    .line 696
    const/4 v12, 0x0

    .line 697
    const v13, 0x7f0201de

    .line 685
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 700
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 701
    const-string/jumbo v1, "DataDisabled"

    .line 702
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 703
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 704
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 706
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 708
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 705
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 707
    const v8, 0x7f0201dc

    .line 709
    const v10, 0x7f0f02e0

    .line 710
    const v11, 0x7f020599

    .line 711
    const/4 v12, 0x0

    .line 712
    const v13, 0x7f0201ba

    .line 700
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 716
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 717
    const-string/jumbo v1, "H_Plus"

    .line 719
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 720
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 721
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 723
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 725
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 722
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 724
    const v8, 0x7f0201dc

    .line 726
    const v10, 0x7f0f02d5

    .line 727
    const v11, 0x7f0205bd

    .line 728
    const/4 v12, 0x0

    .line 729
    const v13, 0x7f0201d9

    .line 731
    const v14, 0x7f0205f7

    .line 716
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 734
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 735
    const-string/jumbo v1, "DC"

    .line 737
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 738
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 739
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 741
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 743
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 740
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 742
    const v8, 0x7f0201dc

    .line 744
    const v10, 0x7f0f02d5

    .line 745
    const v11, 0x7f0205b9

    .line 746
    const/4 v12, 0x0

    .line 747
    const v13, 0x7f0201d9

    .line 749
    const v14, 0x7f0205f3

    .line 734
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 752
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 753
    const-string/jumbo v1, "4G_LTE_LTN"

    .line 754
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 755
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 756
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 758
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 760
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 757
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 759
    const v8, 0x7f0201dc

    .line 761
    const v10, 0x7f0f02d8

    .line 762
    const v11, 0x7f020586

    .line 763
    const/4 v12, 0x0

    .line 764
    const v13, 0x7f0201d9

    .line 765
    const v14, 0x7f0205c5

    .line 752
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 768
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 769
    const-string/jumbo v1, "4G_ATT"

    .line 771
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 772
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 773
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 775
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 777
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 774
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 776
    const v8, 0x7f0201dc

    .line 778
    const v10, 0x7f0f02d6

    .line 779
    const v11, 0x7f0205b3

    .line 780
    const/4 v12, 0x0

    .line 781
    const v13, 0x7f0201d9

    .line 783
    const v14, 0x7f0205f1

    .line 768
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 786
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 787
    const-string/jumbo v1, "LTE_ATT"

    .line 789
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 790
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 791
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 793
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 795
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 792
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 794
    const v8, 0x7f0201dc

    .line 796
    const v10, 0x7f0f02d8

    .line 797
    const v11, 0x7f0205bf

    .line 798
    const/4 v12, 0x0

    .line 799
    const v13, 0x7f0201d9

    .line 801
    const v14, 0x7f0205f8

    .line 786
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 804
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 805
    const-string/jumbo v1, "3G_TMO"

    .line 807
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 808
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 809
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 811
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 813
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 810
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 812
    const v8, 0x7f0201dc

    .line 814
    const v10, 0x7f0f02d4

    .line 815
    const v11, 0x7f0205b0

    .line 816
    const/4 v12, 0x0

    .line 817
    const v13, 0x7f0201d9

    .line 819
    const v14, 0x7f0205ee

    .line 804
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 822
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 823
    const-string/jumbo v1, "4G_TMO"

    .line 825
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 826
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 827
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 829
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 831
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 828
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 830
    const v8, 0x7f0201dc

    .line 832
    const v10, 0x7f0f02d6

    .line 833
    const v11, 0x7f0205b6

    .line 834
    const/4 v12, 0x0

    .line 835
    const v13, 0x7f0201d9

    .line 837
    const v14, 0x7f0205f1

    .line 822
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 840
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 841
    const-string/jumbo v1, "LTE_TMO"

    .line 843
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 844
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 845
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 847
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 849
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 846
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 848
    const v8, 0x7f0201dc

    .line 850
    const v10, 0x7f0f02d8

    .line 851
    const v11, 0x7f0205c3

    .line 852
    const/4 v12, 0x0

    .line 853
    const v13, 0x7f0201d9

    .line 855
    const v14, 0x7f0205f8

    .line 840
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 858
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 859
    const-string/jumbo v1, "4G_VZW"

    .line 861
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 862
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 863
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 865
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 867
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 864
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 866
    const v8, 0x7f0201dc

    .line 868
    const v10, 0x7f0f02d6

    .line 869
    const v11, 0x7f0205b8

    .line 870
    const/4 v12, 0x0

    .line 871
    const v13, 0x7f0201d9

    .line 873
    const v14, 0x7f0205f1

    .line 858
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 876
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 877
    const-string/jumbo v1, "4G_USCC"

    .line 879
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 880
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 881
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 883
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 885
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 882
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 884
    const v8, 0x7f0201dc

    .line 886
    const v10, 0x7f0f02d6

    .line 887
    const v11, 0x7f0205b7

    .line 888
    const/4 v12, 0x0

    .line 889
    const v13, 0x7f0201d9

    .line 891
    const v14, 0x7f0205f1

    .line 876
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_USCC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 894
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 895
    const-string/jumbo v1, "3G_Plus"

    .line 897
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 898
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 899
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 901
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 903
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 900
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 902
    const v8, 0x7f0201dc

    .line 904
    const v10, 0x7f0f02d4

    .line 905
    const v11, 0x7f0205af

    .line 906
    const/4 v12, 0x0

    .line 907
    const v13, 0x7f0201d9

    .line 909
    const v14, 0x7f0205ef

    .line 894
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 912
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 913
    const-string/jumbo v1, "2G"

    .line 915
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 916
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 917
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 919
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 921
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 918
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 920
    const v8, 0x7f0201dc

    .line 922
    const v10, 0x7f0f02d9

    .line 923
    const v11, 0x7f0205ab

    .line 924
    const/4 v12, 0x0

    .line 925
    const v13, 0x7f0201d9

    .line 927
    const v14, 0x7f0205ec

    .line 912
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 930
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 931
    const-string/jumbo v1, "4G_CU"

    .line 933
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 934
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 935
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 937
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 939
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 936
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 938
    const v8, 0x7f0201dc

    .line 940
    const v10, 0x7f0f02d6

    .line 941
    const v11, 0x7f0205b4

    .line 942
    const/4 v12, 0x0

    .line 943
    const v13, 0x7f0201d9

    .line 945
    const v14, 0x7f0205f1

    .line 930
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_CU:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 949
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 950
    const-string/jumbo v1, "LTE_Plus"

    .line 952
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 953
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 954
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 956
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 958
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 955
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 957
    const v8, 0x7f0201dc

    .line 959
    const v10, 0x7f0f02d8

    .line 960
    const v11, 0x7f0205c1

    .line 961
    const/4 v12, 0x1

    .line 962
    const v13, 0x7f0201db

    .line 963
    const v14, 0x7f0205fa

    .line 949
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 967
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 968
    const-string/jumbo v1, "2G_KT"

    .line 969
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 970
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 971
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 973
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 975
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 972
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 974
    const v8, 0x7f0201dc

    .line 976
    const v10, 0x7f0f02d1

    .line 977
    const v11, 0x7f0205ac

    .line 978
    const/4 v12, 0x0

    .line 979
    const v13, 0x7f0201d8

    .line 980
    const v14, 0x7f0205f5

    .line 967
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 983
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 984
    const-string/jumbo v1, "3G_KT"

    .line 985
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 986
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 987
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 989
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 991
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 988
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 990
    const v8, 0x7f0201dc

    .line 992
    const v10, 0x7f0f02d4

    .line 993
    const v11, 0x7f0205ae

    .line 994
    const/4 v12, 0x0

    .line 995
    const v13, 0x7f0201d9

    .line 996
    const v14, 0x7f0205ee

    .line 983
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 999
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1000
    const-string/jumbo v1, "LTE_KT"

    .line 1001
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 1002
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 1003
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 1005
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 1007
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 1004
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1006
    const v8, 0x7f0201dc

    .line 1008
    const v10, 0x7f0f02d8

    .line 1009
    const v11, 0x7f0205c0

    .line 1010
    const/4 v12, 0x0

    .line 1011
    const v13, 0x7f0201db

    .line 1012
    const v14, 0x7f0205f8

    .line 999
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1015
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1016
    const-string/jumbo v1, "LTE_Plus_KT"

    .line 1017
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 1018
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 1019
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 1021
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 1023
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 1020
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1022
    const v8, 0x7f0201dc

    .line 1024
    const v10, 0x7f0f02d8

    .line 1025
    const v11, 0x7f0205c2

    .line 1026
    const/4 v12, 0x1

    .line 1027
    const v13, 0x7f0201db

    .line 1028
    const v14, 0x7f0205fa

    .line 1015
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1031
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1032
    const-string/jumbo v1, "4.5G"

    .line 1034
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    .line 1035
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 1036
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    .line 1038
    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    .line 1040
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 1037
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1039
    const v8, 0x7f0201dc

    .line 1041
    const v10, 0x7f0f02d6

    .line 1042
    const v11, 0x7f0205b1

    .line 1043
    const/4 v12, 0x1

    .line 1044
    const v13, 0x7f0201cd

    .line 1045
    const v14, 0x7f0205f0

    .line 1031
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_HALF_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1049
    const v0, 0x7f02069c

    .line 1050
    const v1, 0x7f02068e

    .line 1051
    const v2, 0x7f0206a3

    .line 1052
    const v3, 0x7f020696

    .line 1048
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_DEFAULT:[I

    .line 1056
    const/4 v0, 0x0

    .line 1057
    const v1, 0x7f02068f

    .line 1058
    const v2, 0x7f0206a4

    .line 1059
    const v3, 0x7f020697

    .line 1055
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_ATT:[I

    .line 1063
    const v0, 0x7f02069f

    .line 1064
    const v1, 0x7f020695

    .line 1065
    const v2, 0x7f0206aa

    .line 1066
    const v3, 0x7f02069a

    .line 1062
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_TMO:[I

    .line 1070
    const v0, 0x7f02069d

    .line 1071
    const v1, 0x7f020693

    .line 1072
    const v2, 0x7f0206a8

    .line 1073
    const v3, 0x7f020698

    .line 1069
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS:[I

    .line 1077
    const v0, 0x7f02069e

    .line 1078
    const v1, 0x7f020694

    .line 1079
    const v2, 0x7f0206a9

    .line 1080
    const v3, 0x7f020699

    .line 1076
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS_KT:[I

    .line 1085
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->PreferredSimIcon:[I

    .line 23
    return-void

    .line 133
    nop

    :array_0
    .array-data 4
        0x7f020620
        0x7f020622
        0x7f020624
        0x7f020626
        0x7f020628
        0x7f02062a
    .end array-data

    .line 139
    :array_1
    .array-data 4
        0x7f020620
        0x7f020622
        0x7f020624
        0x7f020626
        0x7f020628
        0x7f02062a
    .end array-data

    .line 165
    :array_2
    .array-data 4
        0x7f020680
        0x7f020682
        0x7f020684
        0x7f020686
        0x7f020688
        0x7f02068a
    .end array-data

    .line 171
    :array_3
    .array-data 4
        0x7f020680
        0x7f020682
        0x7f020684
        0x7f020686
        0x7f020688
        0x7f02068a
    .end array-data

    .line 204
    :array_4
    .array-data 4
        0x7f020632
        0x7f020633
        0x7f020634
        0x7f020635
        0x7f020636
        0x7f020637
    .end array-data

    .line 213
    :array_5
    .array-data 4
        0x7f020638
        0x7f020639
        0x7f02063a
        0x7f02063b
        0x7f02063c
        0x7f02063d
        0x7f02063e
        0x7f02063f
        0x7f020640
        0x7f020641
        0x7f020642
        0x7f020643
        0x7f020644
        0x7f020645
        0x7f020646
        0x7f020647
        0x7f020648
        0x7f020649
        0x7f02064a
        0x7f02064b
        0x7f02064c
        0x7f02064d
        0x7f02064e
        0x7f02064f
        0x7f020650
    .end array-data

    .line 241
    :array_6
    .array-data 4
        0x7f020651
        0x7f020652
        0x7f020653
        0x7f020654
        0x7f020655
        0x7f020656
        0x7f020657
        0x7f020658
        0x7f020659
        0x7f02065a
        0x7f02065b
        0x7f02065c
        0x7f02065d
        0x7f02065e
        0x7f02065f
        0x7f020660
        0x7f020661
        0x7f020662
        0x7f020663
        0x7f020664
        0x7f020665
        0x7f020666
        0x7f020667
        0x7f020668
        0x7f020669
        0x7f02066a
        0x7f02066b
        0x7f02066c
        0x7f02066d
        0x7f02066e
        0x7f02066f
        0x7f020670
        0x7f020671
        0x7f020672
        0x7f020673
        0x7f020674
    .end array-data

    .line 1085
    :array_7
    .array-data 4
        0x7f020603
        0x7f020604
        0x7f020606
        0x7f02060a
        0x7f02060a
        0x7f020609
        0x7f020608
        0x7f02060b
        0x7f020607
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTelephonyNoServiceIcon()I
    .locals 3

    .prologue
    .line 91
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v1, :cond_0

    .line 92
    const v0, 0x7f0206b6

    .line 106
    .local v0, "noServiceIconId":I
    :goto_0
    return v0

    .line 95
    .end local v0    # "noServiceIconId":I
    :cond_0
    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const v0, 0x7f0206a2

    .restart local v0    # "noServiceIconId":I
    goto :goto_0

    .line 97
    .end local v0    # "noServiceIconId":I
    :cond_1
    const-string/jumbo v1, "TMB"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "MTR"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    :cond_2
    const v0, 0x7f0206a1

    .restart local v0    # "noServiceIconId":I
    goto :goto_0

    .line 100
    .end local v0    # "noServiceIconId":I
    :cond_3
    const v0, 0x7f0206a0

    .restart local v0    # "noServiceIconId":I
    goto :goto_0
.end method

.method static getTelephonySignalContentDesc()[I
    .locals 2

    .prologue
    .line 43
    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    .line 44
    .local v0, "maxSignalLevel":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 45
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    return-object v1

    .line 47
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    return-object v1
.end method

.method static getTelephonySignalStrength()[[I
    .locals 2

    .prologue
    .line 30
    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    .line 31
    .local v0, "maxSignalLevel":I
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v1, :cond_0

    .line 32
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

    return-object v1

    .line 34
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 35
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    return-object v1

    .line 37
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    return-object v1
.end method

.method static getTelephonySignalStrengthFocusBg()I
    .locals 2

    .prologue
    .line 80
    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 81
    const v0, 0x7f02068b

    return v0

    .line 83
    :cond_0
    const v0, 0x7f02068c

    return v0
.end method

.method static getTelephonySignalStrengthFocused()[[I
    .locals 2

    .prologue
    .line 52
    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 53
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_5_LEVEL_STRENGTH_FOCUS:[[I

    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[[I

    return-object v0
.end method

.method static getTelephonySignalStrengthForCTC(Z)[I
    .locals 2
    .param p0, "isTwoLine"    # Z

    .prologue
    .line 62
    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 63
    if-eqz p0, :cond_0

    .line 64
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH_TWO_LINE:[I

    return-object v0

    .line 66
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH:[I

    return-object v0

    .line 69
    :cond_1
    if-eqz p0, :cond_2

    .line 70
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH_TWO_LINE:[I

    return-object v0

    .line 72
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH:[I

    return-object v0
.end method
