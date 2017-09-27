.class public abstract Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;
.super Landroid/os/Binder;
.source "IScrollCaptureService.java"

# interfaces
.implements Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    .line 19
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    .line 30
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 34
    :cond_0
    new-instance v1, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 28
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    if-eqz v1, :cond_0

    .line 32
    check-cast v0, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_0
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    .line 46
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v10, 0x1

    return v10

    :sswitch_1
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    .line 51
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->canScrollCapture(Landroid/os/IBinder;)Z

    move-result v9

    .line 55
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-nez v9, :cond_0

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v10, 0x1

    return v10

    :cond_0
    const/4 v10, 0x1

    .line 56
    goto :goto_0

    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_result":Z
    :sswitch_2
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    .line 61
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->isUiActivated()Z

    move-result v9

    .line 63
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-nez v9, :cond_1

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/4 v10, 0x1

    return v10

    :cond_1
    const/4 v10, 0x1

    .line 64
    goto :goto_1

    .end local v9    # "_result":Z
    :sswitch_3
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    .line 69
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_2

    const/4 v6, 0x0

    .line 79
    :goto_2
    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->startCapture(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v9

    .line 80
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-nez v9, :cond_3

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v10, 0x1

    return v10

    .line 74
    .end local v9    # "_result":Z
    :cond_2
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .local v6, "_arg1":Landroid/os/Bundle;
    goto :goto_2

    .end local v6    # "_arg1":Landroid/os/Bundle;
    .restart local v9    # "_result":Z
    :cond_3
    const/4 v10, 0x1

    .line 81
    goto :goto_3

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Z
    :sswitch_4
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    .line 86
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 90
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_4

    const/4 v8, 0x0

    .line 98
    :goto_4
    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->onGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z

    move-result v9

    .line 99
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-nez v9, :cond_5

    const/4 v10, 0x0

    :goto_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v10, 0x1

    return v10

    .line 93
    .end local v9    # "_result":Z
    :cond_4
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .local v8, "_arg2":Landroid/os/Bundle;
    goto :goto_4

    .end local v8    # "_arg2":Landroid/os/Bundle;
    .restart local v9    # "_result":Z
    :cond_5
    const/4 v10, 0x1

    .line 100
    goto :goto_5

    .end local v2    # "_arg0":J
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Z
    :sswitch_5
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    .line 105
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 109
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 111
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_6

    const/4 v8, 0x0

    .line 117
    :goto_6
    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->onGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z

    move-result v9

    .line 118
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-nez v9, :cond_7

    const/4 v10, 0x0

    :goto_7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v10, 0x1

    return v10

    .line 112
    .end local v9    # "_result":Z
    :cond_6
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .restart local v8    # "_arg2":Landroid/os/Bundle;
    goto :goto_6

    .end local v8    # "_arg2":Landroid/os/Bundle;
    .restart local v9    # "_result":Z
    :cond_7
    const/4 v10, 0x1

    .line 119
    goto :goto_7

    .end local v2    # "_arg0":J
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Z
    :sswitch_6
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    .line 124
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 127
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->setCustomSettingFilePath(Ljava/lang/String;)Z

    move-result v9

    .line 128
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-nez v9, :cond_8

    const/4 v10, 0x0

    :goto_8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v10, 0x1

    return v10

    :cond_8
    const/4 v10, 0x1

    .line 129
    goto :goto_8

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Z
    :sswitch_7
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    .line 134
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_9

    const/4 v5, 0x0

    .line 144
    :goto_9
    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->registerNotification(ILandroid/app/Notification;)Z

    move-result v9

    .line 145
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-nez v9, :cond_a

    const/4 v10, 0x0

    :goto_a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v10, 0x1

    return v10

    .line 139
    .end local v9    # "_result":Z
    :cond_9
    sget-object v10, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification;

    .local v5, "_arg1":Landroid/app/Notification;
    goto :goto_9

    .end local v5    # "_arg1":Landroid/app/Notification;
    .restart local v9    # "_result":Z
    :cond_a
    const/4 v10, 0x1

    .line 146
    goto :goto_a

    .end local v0    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_8
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    .line 151
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->cancelNotification(I)Z

    move-result v9

    .line 155
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-nez v9, :cond_b

    const/4 v10, 0x0

    :goto_b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v10, 0x1

    return v10

    :cond_b
    const/4 v10, 0x1

    .line 156
    goto :goto_b

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
