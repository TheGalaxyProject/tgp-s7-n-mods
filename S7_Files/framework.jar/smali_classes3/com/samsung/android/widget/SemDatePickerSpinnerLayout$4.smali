.class Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;
.super Ljava/lang/Object;
.source "SemDatePickerSpinnerLayout.java"

# interfaces
.implements Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V
    .locals 16
    .param p1, "picker"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 184
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 185
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    .line 186
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get8(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    .line 187
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    .line 191
    :cond_0
    const/4 v9, 0x0

    .line 192
    .local v9, "yearChanged":Z
    const/4 v7, 0x0

    .line 193
    .local v7, "monthChanged":Z
    const/4 v2, 0x0

    .line 194
    .local v2, "dayChanged":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v10

    move-object/from16 v0, p1

    if-ne v0, v10, :cond_a

    .line 195
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    .line 197
    .local v5, "maxDayOfMonth":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 198
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v13}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v13

    .line 198
    invoke-static {v10, v11, v12, v13}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)I

    move-result v5

    .line 202
    :cond_1
    move/from16 v0, p2

    if-ne v0, v5, :cond_8

    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_8

    .line 203
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x5

    move/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Ljava/util/Calendar;->set(II)V

    .line 205
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 206
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move/from16 v0, p3

    invoke-static {v10, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    .line 262
    .end local v5    # "maxDayOfMonth":I
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 263
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get11(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v13}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v13

    invoke-static {v10, v11, v12, v13}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)I

    move-result v5

    .line 264
    .restart local v5    # "maxDayOfMonth":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get11(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v10

    if-le v10, v5, :cond_3

    .line 265
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    .line 267
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 268
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get17(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get11(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    .line 268
    invoke-static {v10, v11, v12, v13}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 270
    .local v4, "isLeap":Ljava/lang/Object;
    instance-of v10, v4, Ljava/lang/Boolean;

    if-eqz v10, :cond_4

    .line 271
    nop

    nop

    .end local v4    # "isLeap":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_4

    .line 272
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Z)Z

    .line 280
    .end local v5    # "maxDayOfMonth":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 281
    .local v8, "year":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 282
    .local v6, "month":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 284
    .local v3, "dayOfMonth":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 285
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v8

    .line 286
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get11(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v6

    .line 287
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v3

    .line 290
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10, v8, v6, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;III)V

    .line 291
    if-nez v9, :cond_6

    if-nez v7, :cond_6

    if-eqz v2, :cond_7

    .line 292
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v11, 0x0

    invoke-static {v10, v11, v9, v7, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;ZZZZ)V

    .line 294
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Z)V

    .line 181
    return-void

    .line 209
    .end local v3    # "dayOfMonth":I
    .end local v6    # "month":I
    .end local v8    # "year":I
    .restart local v5    # "maxDayOfMonth":I
    :cond_8
    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_9

    move/from16 v0, p3

    if-ne v0, v5, :cond_9

    .line 210
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x5

    move/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Ljava/util/Calendar;->set(II)V

    .line 212
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 213
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move/from16 v0, p3

    invoke-static {v10, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    goto/16 :goto_0

    .line 217
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    sub-int v11, p3, p2

    const/4 v12, 0x5

    invoke-virtual {v10, v12, v11}, Ljava/util/Calendar;->add(II)V

    .line 219
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 220
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    sub-int v12, p3, p2

    add-int/2addr v11, v12

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    goto/16 :goto_0

    .line 224
    .end local v5    # "maxDayOfMonth":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v10

    move-object/from16 v0, p1

    if-ne v0, v10, :cond_e

    .line 225
    const/16 v10, 0xb

    move/from16 v0, p2

    if-ne v0, v10, :cond_c

    if-nez p3, :cond_c

    .line 226
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x2

    move/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Ljava/util/Calendar;->set(II)V

    .line 228
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 229
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move/from16 v0, p3

    invoke-static {v10, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    .line 247
    :cond_b
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 232
    :cond_c
    if-nez p2, :cond_d

    const/16 v10, 0xb

    move/from16 v0, p3

    if-ne v0, v10, :cond_d

    .line 233
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x2

    move/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Ljava/util/Calendar;->set(II)V

    .line 235
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 236
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move/from16 v0, p3

    invoke-static {v10, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    goto :goto_1

    .line 240
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    sub-int v11, p3, p2

    const/4 v12, 0x2

    invoke-virtual {v10, v12, v11}, Ljava/util/Calendar;->add(II)V

    .line 242
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 243
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get11(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    sub-int v12, p3, p2

    add-int/2addr v11, v12

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    goto :goto_1

    .line 248
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get20(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v10

    move-object/from16 v0, p1

    if-ne v0, v10, :cond_10

    .line 249
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    sub-int v11, p3, p2

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v11}, Ljava/util/Calendar;->add(II)V

    .line 251
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 252
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    sub-int v12, p3, p2

    add-int/2addr v11, v12

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    .line 255
    :cond_f
    const/4 v7, 0x1

    .line 256
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 258
    :cond_10
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10
.end method
