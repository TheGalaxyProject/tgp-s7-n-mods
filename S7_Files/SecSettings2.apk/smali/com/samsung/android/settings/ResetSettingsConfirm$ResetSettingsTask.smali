.class Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;
.super Landroid/os/AsyncTask;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetSettingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/ResetSettingsConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/ResetSettingsConfirm;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/ResetSettingsConfirm;Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/ResetSettingsConfirm;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;-><init>(Lcom/samsung/android/settings/ResetSettingsConfirm;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # [Ljava/lang/Object;

    .prologue
    .line 262
    check-cast p1, [Landroid/content/Context;

    .end local p1    # "context":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 3
    .param p1, "context"    # [Landroid/content/Context;

    .prologue
    .line 265
    :try_start_0
    new-instance v1, Lcom/samsung/android/settings/ResetSettingsValue;

    invoke-direct {v1}, Lcom/samsung/android/settings/ResetSettingsValue;-><init>()V

    .line 266
    .local v1, "resetValue":Lcom/samsung/android/settings/ResetSettingsValue;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ResetSettingsValue;->resetAllSettings(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v1    # "resetValue":Lcom/samsung/android/settings/ResetSettingsValue;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 267
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 274
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-static {v0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->-wrap1(Lcom/samsung/android/settings/ResetSettingsConfirm;)V

    .line 274
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 258
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 256
    return-void
.end method
