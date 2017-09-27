.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;
.super Landroid/widget/LinearLayout;
.source "DeskStatusBarView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getBatteryMeterView()Landroid/view/View;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method
