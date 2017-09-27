.class Lcom/android/systemui/statusbar/car/CarNavigationBarView;
.super Lcom/android/systemui/statusbar/phone/NavigationBarView;
.source "CarNavigationBarView.java"


# instance fields
.field private mLightsOutButtons:Landroid/widget/LinearLayout;

.field private mNavButtons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method public addButton(Lcom/android/systemui/statusbar/car/CarNavigationButton;Lcom/android/systemui/statusbar/car/CarNavigationButton;)V
    .locals 1
    .param p1, "button"    # Lcom/android/systemui/statusbar/car/CarNavigationButton;
    .param p2, "lightsOutButton"    # Lcom/android/systemui/statusbar/car/CarNavigationButton;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mLightsOutButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 0

    .prologue
    .line 66
    return-object p0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f1300d6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNavButtons:Landroid/widget/LinearLayout;

    .line 44
    const v0, 0x7f1300d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mLightsOutButtons:Landroid/widget/LinearLayout;

    .line 42
    return-void
.end method

.method public reorient()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 0
    .param p1, "disabledFlags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 53
    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 0
    .param p1, "hints"    # I
    .param p2, "force"    # Z

    .prologue
    .line 70
    return-void
.end method
