.class Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;
.super Ljava/lang/Object;
.source "ChooseLockDirection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->attachListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 737
    const-string/jumbo v8, "ChooseLockDirection"

    const-string/jumbo v9, "confirm Clicked"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 743
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v8, v9, :cond_2

    .line 745
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Ljava/lang/String;)Ljava/lang/String;

    .line 747
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 748
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 750
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get25(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v8

    const v9, 0x7f0b0278

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 751
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get25(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 752
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get16(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 754
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get11(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 755
    const v10, 0x7f0b0273

    .line 754
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 757
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get11(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get11(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 758
    const-string/jumbo v10, " "

    .line 757
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 759
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 762
    const v11, 0x7f0b01db

    .line 759
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 757
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    sget-object v9, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    .line 766
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get10(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get20(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    .line 769
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 770
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 736
    :cond_1
    :goto_0
    return-void

    .line 781
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 782
    const-string/jumbo v8, "ChooseLockDirection"

    const-string/jumbo v9, "Both passwords match"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 789
    const/4 v4, 0x4

    .line 790
    .local v4, "minLength":I
    const/16 v3, 0x8

    .line 792
    .local v3, "maxLength":I
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 793
    const-class v10, Lcom/samsung/android/settings/ChooseLockAdditionalPin;

    .line 792
    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 794
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 795
    const-string/jumbo v8, "lockscreen.password_min"

    const/4 v9, 0x4

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 796
    const-string/jumbo v8, "lockscreen.password_max"

    const/16 v9, 0x8

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 798
    const/16 v5, 0x1000

    .line 799
    .local v5, "quality":I
    const-string/jumbo v8, "lockscreen.password_type"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 800
    const-string/jumbo v8, "isDirectionLock"

    .line 801
    const/4 v9, 0x1

    .line 800
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 802
    const-string/jumbo v8, "firstlock"

    .line 803
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v9

    .line 802
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    const-string/jumbo v8, "password"

    .line 805
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get28(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/lang/String;

    move-result-object v9

    .line 804
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    const/high16 v8, 0x2000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 809
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 808
    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 811
    const-string/jumbo v8, "has_challenge"

    const/4 v9, 0x1

    .line 810
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 815
    :cond_3
    :try_start_0
    const-string/jumbo v8, "ChooseLockDirection"

    const-string/jumbo v9, "launching back up PIN"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->startActivity(Landroid/content/Intent;)V

    .line 817
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 825
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "maxLength":I
    .end local v4    # "minLength":I
    .end local v5    # "quality":I
    :cond_4
    const-string/jumbo v8, "ChooseLockDirection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "back up PIN not supported, mLockVirgin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get18(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 827
    .local v6, "userId":I
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get17(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    .line 828
    .local v7, "wasSecureBefore":Z
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChosenPattern:Ljava/util/List;

    .line 830
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->saveLockDirection(Ljava/lang/String;I)V

    .line 833
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get18(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 834
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get17(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 837
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportIris()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    :goto_1
    invoke-static {v9, v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set3(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    .line 839
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    .line 840
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 839
    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    :goto_2
    invoke-static {v9, v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    .line 842
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get15(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 843
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    .line 856
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get23(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/os/AsyncTask;

    move-result-object v8

    if-nez v8, :cond_7

    .line 857
    const-string/jumbo v8, "ChooseLockDirection"

    const-string/jumbo v9, "mPendingLockCheck is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_7
    if-nez v7, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 874
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get26(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 875
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->finish()V

    goto/16 :goto_0

    .line 837
    :cond_9
    const/4 v8, 0x1

    goto :goto_1

    .line 839
    :cond_a
    const/4 v8, 0x1

    goto :goto_2

    .line 846
    :cond_b
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 847
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap3(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    .line 849
    :cond_c
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get15(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 850
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    .line 852
    :cond_d
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 853
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    goto :goto_3

    .line 865
    :cond_e
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 868
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 867
    invoke-static {v8, v9}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    .line 870
    .restart local v2    # "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 871
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_4

    .line 881
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "userId":I
    .end local v7    # "wasSecureBefore":Z
    :cond_f
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get25(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 882
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get11(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 883
    const v10, 0x7f0b0271

    .line 882
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 885
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    goto/16 :goto_0
.end method
