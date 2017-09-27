.class Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;
.super Landroid/os/AsyncTask;
.source "BtTetherDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MakeDeviceAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 132
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-set1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;Z)Z

    .line 134
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getContactDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    .local v0, "iconResId":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 136
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 137
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClassDrawable()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    const v5, 0x7f0d00de

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 144
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()I

    move-result v4

    .line 146
    .local v4, "summary":I
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    .line 148
    .local v1, "isBusy":Z
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v5

    if-nez v5, :cond_1

    .line 149
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    new-instance v6, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    invoke-direct {v6, v2, v4, v0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;-><init>(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)V

    invoke-static {v5, v6}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-set0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    .line 156
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v5

    return-object v5

    .line 151
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v5

    iput-object v2, v5, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->title:Ljava/lang/String;

    .line 152
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v5

    iput v4, v5, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->summary:I

    .line 153
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v5

    iput-object v0, v5, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->icon:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v5

    iput-boolean v1, v5, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->isBusy:Z

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;)V
    .locals 11
    .param p1, "result"    # Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u200e"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "\u200e"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v6}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPrefixName()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "prefixName":Ljava/lang/String;
    iget v5, p1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->summary:I

    .line 165
    .local v5, "summary":I
    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->icon:Landroid/graphics/drawable/Drawable;

    .line 167
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 168
    const-string/jumbo v6, "BtTetherDevicePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onDeviceAttributesChanged :: prefixName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    if-eqz v5, :cond_3

    .line 175
    const-string/jumbo v6, "BtTetherDevicePreference"

    const-string/jumbo v8, "onDeviceAttributesChanged :: Connection summary set "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->setSummary(I)V

    .line 182
    :goto_1
    if-eqz v3, :cond_0

    .line 183
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    iget-boolean v6, p1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->isBusy:Z

    if-eqz v6, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {v8, v6}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->setEnabled(Z)V

    .line 189
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v6}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-wrap0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v6, v7}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-set1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;Z)Z

    .line 195
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v6}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 197
    :try_start_1
    new-instance v6, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-set2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;Z)Z
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :cond_1
    :goto_4
    return-void

    .line 170
    :cond_2
    const-string/jumbo v6, "BtTetherDevicePreference"

    const-string/jumbo v8, "onDeviceAttributesChanged :: prefixName is empty."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_3
    const-string/jumbo v6, "BtTetherDevicePreference"

    const-string/jumbo v8, "onDeviceAttributesChanged :: Connection summary is empty."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 186
    :cond_4
    const/4 v6, 0x1

    goto :goto_2

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BtTetherDevicePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error has occured during notifyHierarchyChanged() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 200
    .local v2, "ex":Ljava/util/concurrent/RejectedExecutionException;
    const-string/jumbo v6, "BtTetherDevicePreference"

    const-string/jumbo v7, "RejectedExecutionException :: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 160
    check-cast p1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->onPostExecute(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;)V

    return-void
.end method
