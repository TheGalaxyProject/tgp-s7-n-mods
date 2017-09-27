.class Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
.super Lcom/samsung/android/knox/SemPersonaObserver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->containerId:I

    return v0
.end method

.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Landroid/content/Context;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "containerId"    # I
    .param p4, "flags"    # I

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 345
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/knox/SemPersonaObserver;-><init>(Landroid/content/Context;II)V

    .line 344
    return-void
.end method


# virtual methods
.method public onKeyGuardStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 355
    const-string/jumbo v0, "SecurityPolicy"

    const-string/jumbo v1, "PersonaObserver.onKeyGuardStateChanged()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public onSessionExpired()V
    .locals 2

    .prologue
    .line 350
    const-string/jumbo v0, "SecurityPolicy"

    const-string/jumbo v1, "PersonaObserver.onSessionExpired()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public onStateChange(Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    .locals 2
    .param p1, "newState"    # Lcom/samsung/android/knox/SemPersonaState;
    .param p2, "previousState"    # Lcom/samsung/android/knox/SemPersonaState;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->-get1(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method
