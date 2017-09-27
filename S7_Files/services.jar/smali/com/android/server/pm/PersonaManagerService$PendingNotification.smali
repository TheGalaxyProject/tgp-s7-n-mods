.class Lcom/android/server/pm/PersonaManagerService$PendingNotification;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingNotification"
.end annotation


# instance fields
.field public activityOptions:Landroid/os/Bundle;

.field public notificationKey:Ljava/lang/String;

.field public pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field public userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;ILandroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p2, "userId"    # I
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "activityOptions"    # Landroid/os/Bundle;
    .param p5, "notificationKey"    # Ljava/lang/String;

    .prologue
    .line 15467
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PendingNotification;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15468
    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$PendingNotification;->userId:I

    .line 15469
    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService$PendingNotification;->pendingIntent:Landroid/app/PendingIntent;

    .line 15470
    iput-object p4, p0, Lcom/android/server/pm/PersonaManagerService$PendingNotification;->activityOptions:Landroid/os/Bundle;

    .line 15471
    iput-object p5, p0, Lcom/android/server/pm/PersonaManagerService$PendingNotification;->notificationKey:Ljava/lang/String;

    .line 15467
    return-void
.end method
