.class public Lcom/android/settings/deviceinfo/StorageWizardReady;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finish()V

    .line 30
    return-void

    .line 32
    :cond_0
    const v2, 0x7f0402a9

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setContentView(I)V

    .line 34
    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0b140f

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setHeaderText(I[Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 39
    .local v1, "publicVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 40
    .local v0, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_2

    .line 41
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setIllustrationType(I)V

    .line 42
    new-array v2, v4, [Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 42
    const v3, 0x7f0b1410

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/String;)V

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getNextButton()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0b0424

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 26
    return-void

    .line 44
    :cond_2
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setIllustrationType(I)V

    .line 46
    new-array v2, v4, [Ljava/lang/String;

    .line 47
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 46
    const v3, 0x7f0b1411

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finishAffinity()V

    .line 54
    return-void
.end method
