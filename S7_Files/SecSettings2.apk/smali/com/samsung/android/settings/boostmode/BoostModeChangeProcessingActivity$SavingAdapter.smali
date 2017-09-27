.class Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;
.super Landroid/widget/BaseAdapter;
.source "BoostModeChangeProcessingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavingAdapter"
.end annotation


# instance fields
.field private mAllItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    .line 272
    return-void
.end method


# virtual methods
.method public buildAllItems(Landroid/content/Intent;)V
    .locals 18
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 278
    if-nez p1, :cond_0

    return-void

    .line 279
    :cond_0
    const-wide/16 v4, 0x0

    .line 283
    .local v4, "idCount":J
    const-string/jumbo v2, "key_item_max_brightness"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    .line 284
    .local v14, "extras":[Ljava/lang/Object;
    if-eqz v14, :cond_1

    .line 285
    const/4 v2, 0x0

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v15, v2, -0x5a

    .line 286
    .local v15, "percent":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    .line 279
    const-wide/16 v4, 0x0

    .line 286
    const-wide/16 v16, 0x1

    .end local v4    # "idCount":J
    .local v16, "idCount":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v9, 0x7f0b01b3

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 287
    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v10, 0x7f0b0854

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 286
    :goto_0
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v16

    .line 291
    .end local v15    # "percent":I
    .end local v16    # "idCount":J
    .restart local v4    # "idCount":J
    :cond_1
    const-string/jumbo v2, "key_item_resolution"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    .end local v14    # "extras":[Ljava/lang/Object;
    check-cast v14, [Ljava/lang/Object;

    .line 292
    .restart local v14    # "extras":[Ljava/lang/Object;
    if-eqz v14, :cond_2

    .line 294
    const/4 v2, 0x0

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f0b0598

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, "resolutionStr":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v16, v4, v10

    .end local v4    # "idCount":J
    .restart local v16    # "idCount":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v9, 0x7f0b0593

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v16

    .line 311
    .end local v7    # "resolutionStr":Ljava/lang/String;
    .end local v16    # "idCount":J
    .restart local v4    # "idCount":J
    :cond_2
    const-string/jumbo v2, "key_item_video_enhancer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    .end local v14    # "extras":[Ljava/lang/Object;
    check-cast v14, [Ljava/lang/Object;

    .line 312
    .restart local v14    # "extras":[Ljava/lang/Object;
    if-eqz v14, :cond_3

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v16, v4, v10

    .end local v4    # "idCount":J
    .restart local v16    # "idCount":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0411

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 314
    const/4 v2, 0x0

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a35

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_2
    move-wide v10, v4

    .line 313
    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v16

    .line 318
    .end local v16    # "idCount":J
    .restart local v4    # "idCount":J
    :cond_3
    const-string/jumbo v2, "key_item_uhq_upscaler"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    .end local v14    # "extras":[Ljava/lang/Object;
    check-cast v14, [Ljava/lang/Object;

    .line 319
    .restart local v14    # "extras":[Ljava/lang/Object;
    if-eqz v14, :cond_4

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v16, v4, v10

    .end local v4    # "idCount":J
    .restart local v16    # "idCount":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0981

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 321
    const/4 v2, 0x0

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a35

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_3
    move-wide v10, v4

    .line 320
    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v16

    .line 325
    .end local v16    # "idCount":J
    .restart local v4    # "idCount":J
    :cond_4
    const-string/jumbo v2, "key_item_game_launcher"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    .end local v14    # "extras":[Ljava/lang/Object;
    check-cast v14, [Ljava/lang/Object;

    .line 326
    .restart local v14    # "extras":[Ljava/lang/Object;
    if-eqz v14, :cond_5

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v16, v4, v10

    .end local v4    # "idCount":J
    .restart local v16    # "idCount":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a82

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 328
    const/4 v2, 0x0

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a35

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_4
    move-wide v10, v4

    .line 327
    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v16

    .line 332
    .end local v16    # "idCount":J
    .restart local v4    # "idCount":J
    :cond_5
    const-string/jumbo v2, "key_item_game_tools"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    .end local v14    # "extras":[Ljava/lang/Object;
    check-cast v14, [Ljava/lang/Object;

    .line 333
    .restart local v14    # "extras":[Ljava/lang/Object;
    if-eqz v14, :cond_6

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v16, v4, v10

    .end local v4    # "idCount":J
    .restart local v16    # "idCount":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a84

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 335
    const/4 v2, 0x0

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a35

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_5
    move-wide v10, v4

    .line 334
    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v16

    .line 277
    .end local v16    # "idCount":J
    .restart local v4    # "idCount":J
    :cond_6
    return-void

    .line 287
    .end local v4    # "idCount":J
    .restart local v15    # "percent":I
    .restart local v16    # "idCount":J
    :cond_7
    invoke-static {v15}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 296
    .end local v15    # "percent":I
    .end local v16    # "idCount":J
    .restart local v4    # "idCount":J
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f0b0596

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "resolutionStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 299
    .end local v7    # "resolutionStr":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f0b0597

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "resolutionStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 314
    .end local v4    # "idCount":J
    .end local v7    # "resolutionStr":Ljava/lang/String;
    .restart local v16    # "idCount":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a36

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 321
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a36

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 328
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a36

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 335
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a36

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 373
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    .line 374
    .local v0, "s":Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->id:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0d0193

    const/4 v6, 0x0

    const/16 v5, 0x8

    const v4, 0x7f0d0195

    .line 379
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    .line 381
    .local v1, "s":Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;
    if-nez p2, :cond_1

    .line 382
    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-direct {v0, v2, v8}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;)V

    .line 383
    .local v0, "holder":Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0401c3

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 384
    const v2, 0x7f110520

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 385
    const v2, 0x7f110521

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 386
    const v2, 0x7f110522

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    .line 387
    const v2, 0x7f11051f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    .line 388
    const v2, 0x7f11051e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    .line 389
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 394
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u200f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    .line 397
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget v2, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    packed-switch v2, :pswitch_data_0

    .line 425
    :goto_1
    return-object p2

    .line 391
    .end local v0    # "holder":Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;
    goto :goto_0

    .line 403
    :pswitch_0
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 405
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 410
    :pswitch_1
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 412
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 417
    :pswitch_2
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 419
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method public playItemCheckingAnim()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 340
    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    if-le v0, v1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Z)Z

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    iput v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    .line 346
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->notifyDataSetChanged()V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138a

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 348
    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    .line 339
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Z)Z

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->notifyDataSetChanged()V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138b

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
