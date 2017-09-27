.class public Lcom/android/settings/UCSCryptKeeperTask$StateMachine;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field protected state:I

.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;


# direct methods
.method public constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    const/4 v1, 0x0

    .line 333
    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->ENTER_PUK:I

    .line 335
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->ENTER_PIN:I

    .line 336
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->CONFIRM_PIN:I

    .line 337
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->DONE:I

    .line 338
    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    .line 333
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    return v0
.end method

.method public next()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    sget-object v2, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap4(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V

    .line 343
    iget v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    if-nez v1, :cond_3

    .line 344
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask;->checkPuk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    iput v3, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    .line 346
    const v0, 0x7f0b1b72

    .line 350
    :goto_0
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v3}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    .line 373
    :goto_1
    if-eqz v0, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 379
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$1;

    invoke-direct {v2, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$1;-><init>(Lcom/android/settings/UCSCryptKeeperTask$StateMachine;)V

    .line 387
    const-wide/16 v4, 0xc8

    .line 379
    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    :cond_1
    return-void

    .line 348
    :cond_2
    const v0, 0x7f0b1b68

    goto :goto_0

    .line 351
    :cond_3
    iget v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    if-ne v1, v3, :cond_5

    .line 352
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask;->checkPin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 353
    iput v5, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    .line 354
    const v0, 0x7f0b1b71

    .line 358
    :goto_2
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v3}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_1

    .line 356
    :cond_4
    const v0, 0x7f0b1b67

    goto :goto_2

    .line 359
    :cond_5
    iget v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    if-ne v1, v5, :cond_7

    .line 360
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 361
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    .line 362
    const v0, 0x7f0b1b69

    .line 363
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap5(Lcom/android/settings/UCSCryptKeeperTask;)V

    .line 364
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v3}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_1

    .line 366
    :cond_6
    iput v3, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    .line 367
    const v0, 0x7f0b14bf

    .line 368
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1

    .line 371
    :cond_7
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v3}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_1
.end method

.method varargs reset([I)V
    .locals 5
    .param p1, "remainCnt"    # [I

    .prologue
    const v4, 0x7f0b1b6f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 392
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v0, v2}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    .line 395
    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 398
    array-length v0, p1

    if-ne v0, v2, :cond_2

    .line 399
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    aget v2, p1, v3

    invoke-virtual {v1, v4, v2}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    .line 403
    :cond_0
    :goto_0
    iput v3, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    .line 408
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 410
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$2;

    invoke-direct {v1, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$2;-><init>(Lcom/android/settings/UCSCryptKeeperTask$StateMachine;)V

    .line 418
    const-wide/16 v2, 0xc8

    .line 410
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 391
    :cond_1
    return-void

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v0, v4}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_0
.end method
