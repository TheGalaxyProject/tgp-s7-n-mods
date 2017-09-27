.class final Lcom/android/settings/notification/ZenAccessSettings$2;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenAccessSettings;->setAccess(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$access:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$pkg"    # Ljava/lang/String;
    .param p3, "val$access"    # Z

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$2;->val$pkg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settings/notification/ZenAccessSettings$2;->val$access:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/settings/notification/ZenAccessSettings$2;->val$context:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 186
    .local v0, "mgr":Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/settings/notification/ZenAccessSettings$2;->val$pkg:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/settings/notification/ZenAccessSettings$2;->val$access:Z

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 184
    return-void
.end method
