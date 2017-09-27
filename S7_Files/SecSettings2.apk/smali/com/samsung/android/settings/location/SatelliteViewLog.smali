.class public Lcom/samsung/android/settings/location/SatelliteViewLog;
.super Lcom/android/settings/InstrumentedActivity;
.source "SatelliteViewLog.java"


# instance fields
.field private btn_clear:Landroid/widget/Button;

.field private display:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private fileLen:I

.field private fileName:Ljava/lang/String;

.field private in:Ljava/io/FileInputStream;

.field private out:Ljava/io/FileOutputStream;

.field private tv:Landroid/widget/TextView;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/location/SatelliteViewLog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteViewLog;->clearFile()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    .line 31
    const-string/jumbo v0, "/data/AGPSLog.txt"

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileName:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private clearFile()V
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    .line 102
    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    .line 104
    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 106
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->out:Ljava/io/FileOutputStream;

    .line 107
    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->out:Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 108
    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 110
    const v1, 0x7f0b0b22

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/SatelliteViewLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "XIA"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/SatelliteViewLog;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x40

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    .line 45
    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    .line 47
    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    if-le v2, v5, :cond_1

    .line 50
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->in:Ljava/io/FileInputStream;

    .line 51
    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    new-array v1, v2, [B

    .line 52
    .local v1, "temp":[B
    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->in:Ljava/io/FileInputStream;

    iget v3, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 55
    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->in:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "temp":[B
    :cond_0
    :goto_0
    const v2, 0x7f04024f

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/location/SatelliteViewLog;->setContentView(I)V

    .line 74
    const v2, 0x7f1105fa

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/location/SatelliteViewLog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    .line 76
    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/settings/location/SatelliteViewLog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/location/SatelliteViewLog$1;-><init>(Lcom/samsung/android/settings/location/SatelliteViewLog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    if-le v2, v5, :cond_2

    .line 85
    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    :goto_1
    const v2, 0x7f1105f9

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/location/SatelliteViewLog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->tv:Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void

    .line 62
    :cond_1
    const v2, 0x7f0b0b22

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/location/SatelliteViewLog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "XIA"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/SatelliteViewLog;->finish()V

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method
