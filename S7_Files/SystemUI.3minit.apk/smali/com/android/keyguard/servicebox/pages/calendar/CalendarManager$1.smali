.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$1;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$1;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-wrap0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Z

    .line 71
    return-void
.end method
