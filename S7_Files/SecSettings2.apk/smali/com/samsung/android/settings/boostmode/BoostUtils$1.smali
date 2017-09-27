.class final Lcom/samsung/android/settings/boostmode/BoostUtils$1;
.super Ljava/lang/Object;
.source "BoostUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostUtils;->showTurnOffPSM(Landroid/content/Context;Landroid/app/AlertDialog;IZLjava/lang/String;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bsm:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

.field final synthetic val$fromWhere:Ljava/lang/String;

.field final synthetic val$mBoostMode:I

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "val$bsm"    # Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;
    .param p2, "val$mContext"    # Landroid/content/Context;
    .param p3, "val$mBoostMode"    # I
    .param p4, "val$fromWhere"    # Ljava/lang/String;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$1;->val$bsm:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    iput-object p2, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$1;->val$mContext:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$1;->val$mBoostMode:I

    iput-object p4, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$1;->val$fromWhere:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$1;->val$bsm:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$1;->val$bsm:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$1;->val$mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;IZ)V

    .line 539
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$1;->val$mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$1;->val$mBoostMode:I

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$1;->val$fromWhere:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->startAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$1;->val$mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$1;->val$mBoostMode:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPerformanceBoosterMode(Landroid/content/Context;I)V

    .line 541
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$1;->val$mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 533
    return-void
.end method
