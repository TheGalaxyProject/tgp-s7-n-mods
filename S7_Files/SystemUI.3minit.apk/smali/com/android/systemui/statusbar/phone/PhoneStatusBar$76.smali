.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$76;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnContextClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setupOthers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 8076
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$76;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 8079
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 8080
    .local v0, "notificationPosition":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8081
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$76;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleContextClick(ILandroid/view/View;)V

    .line 8082
    const/4 v1, 0x1

    return v1
.end method
