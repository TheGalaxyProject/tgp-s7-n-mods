.class Lcom/android/settings/dashboard/SecSearchResultsSummary$2;
.super Landroid/content/BroadcastReceiver;
.source "SecSearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SecSearchResultsSummary;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$2;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 492
    const-string/jumbo v2, "com.sec.android.query_by_voice"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    const-string/jumbo v2, "query"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "query":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$2;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 495
    .local v0, "mAct":Lcom/android/settings/SettingsActivity;
    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setQueryFromOutter(Ljava/lang/String;)V

    .line 491
    .end local v0    # "mAct":Lcom/android/settings/SettingsActivity;
    .end local v1    # "query":Ljava/lang/String;
    :cond_0
    return-void
.end method
