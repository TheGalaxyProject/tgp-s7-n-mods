.class final Lcom/samsung/android/settings/boostmode/BoostUtils$3;
.super Ljava/lang/Object;
.source "BoostUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostUtils;->showTurnOffPSM(Landroid/content/Context;Landroid/app/AlertDialog;IZLjava/lang/String;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$setGLbyUs:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0
    .param p1, "val$setGLbyUs"    # Z
    .param p2, "val$mContext"    # Landroid/content/Context;

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$3;->val$setGLbyUs:Z

    iput-object p2, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$3;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$3;->val$setGLbyUs:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$3;->val$mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setGameLancherEnabled(Landroid/content/Context;Z)V

    .line 551
    :cond_0
    return-void
.end method
