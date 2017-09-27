.class final Lcom/android/keyguard/util/GsimLogManager$1;
.super Landroid/os/AsyncTask;
.source "GsimLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/util/GsimLogManager;->sendLogBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cv:Landroid/content/ContentValues;

.field final synthetic val$pkName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "val$action"    # Ljava/lang/String;
    .param p2, "val$cv"    # Landroid/content/ContentValues;
    .param p3, "val$pkName"    # Ljava/lang/String;
    .param p4, "val$context"    # Landroid/content/Context;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/keyguard/util/GsimLogManager$1;->val$action:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/keyguard/util/GsimLogManager$1;->val$cv:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/android/keyguard/util/GsimLogManager$1;->val$pkName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/keyguard/util/GsimLogManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 245
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/util/GsimLogManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v0, "broadcastIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/keyguard/util/GsimLogManager$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string/jumbo v1, "data"

    iget-object v2, p0, Lcom/android/keyguard/util/GsimLogManager$1;->val$cv:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/android/keyguard/util/GsimLogManager$1;->val$pkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/android/keyguard/util/GsimLogManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    const/4 v1, 0x0

    return-object v1
.end method
