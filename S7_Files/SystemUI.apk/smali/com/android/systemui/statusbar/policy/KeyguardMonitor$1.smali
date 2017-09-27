.class Lcom/android/systemui/statusbar/policy/KeyguardMonitor$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "KeyguardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/KeyguardMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->-set0(Lcom/android/systemui/statusbar/policy/KeyguardMonitor;I)I

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->-wrap0(Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    .line 56
    return-void
.end method
