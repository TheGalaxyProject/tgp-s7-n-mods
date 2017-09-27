.class final Lcom/android/systemui/qs/tiles/TouchSensitivityTile$TouchSensitivityDetailAdapter;
.super Ljava/lang/Object;
.source "TouchSensitivityTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/TouchSensitivityTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchSensitivityDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/TouchSensitivityTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/TouchSensitivityTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/TouchSensitivityTile;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile$TouchSensitivityDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/TouchSensitivityTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/TouchSensitivityTile;Lcom/android/systemui/qs/tiles/TouchSensitivityTile$TouchSensitivityDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/TouchSensitivityTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile$TouchSensitivityDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/TouchSensitivityTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile$TouchSensitivityDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/TouchSensitivityTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->-get0(Lcom/android/systemui/qs/tiles/TouchSensitivityTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 108
    const v0, 0x7f1301fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile$TouchSensitivityDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile$TouchSensitivityDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0f0442

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x230

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile$TouchSensitivityDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/TouchSensitivityTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->-get0(Lcom/android/systemui/qs/tiles/TouchSensitivityTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0441

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile$TouchSensitivityDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/TouchSensitivityTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->-get2(Lcom/android/systemui/qs/tiles/TouchSensitivityTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile$TouchSensitivityDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/TouchSensitivityTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->-get1(Lcom/android/systemui/qs/tiles/TouchSensitivityTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 97
    return p1

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
