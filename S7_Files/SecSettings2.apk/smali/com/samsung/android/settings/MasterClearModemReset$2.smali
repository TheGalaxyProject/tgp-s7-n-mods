.class Lcom/samsung/android/settings/MasterClearModemReset$2;
.super Ljava/lang/Object;
.source "MasterClearModemReset.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/MasterClearModemReset;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/MasterClearModemReset;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/MasterClearModemReset;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/MasterClearModemReset;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/android/settings/MasterClearModemReset$2;->this$0:Lcom/samsung/android/settings/MasterClearModemReset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    const-string/jumbo v0, "MasterClearModemReset"

    const-string/jumbo v1, "MasterClearModemReset-Timeout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/MasterClearModemReset$2;->this$0:Lcom/samsung/android/settings/MasterClearModemReset;

    invoke-static {v0}, Lcom/samsung/android/settings/MasterClearModemReset;->-wrap0(Lcom/samsung/android/settings/MasterClearModemReset;)V

    .line 150
    return-void
.end method
