.class public Lcom/android/systemui/settings/BrightnessDetail;
.super Landroid/widget/FrameLayout;
.source "BrightnessDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessDetail$1;
    }
.end annotation


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field public final mBrightnessDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field private mDeatailExpandButton:Landroid/widget/ImageView;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/settings/BrightnessDetail;Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/settings/BrightnessDetail;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mConvertView:Landroid/view/View;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    new-instance v0, Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessDetail$1;-><init>(Lcom/android/systemui/settings/BrightnessDetail;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 68
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v1, :cond_1

    .line 89
    const-string/jumbo v1, "BrightnessDetail"

    const-string/jumbo v2, "showDetailAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 91
    .local v0, "tmpInt2":[I
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v3, "QS24"

    invoke-static {v1, v2, v3, v4, v4}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;[I)V

    .line 87
    .end local v0    # "tmpInt2":[I
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 74
    const v0, 0x7f130378

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/BrightnessDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mDeatailExpandButton:Landroid/widget/ImageView;

    .line 76
    const-string/jumbo v0, "BrightnessDetail"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/BrightnessDetail;->setFocusable(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mDeatailExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 82
    return-void
.end method
