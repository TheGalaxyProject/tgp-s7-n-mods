.class public abstract Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;
.super Landroid/os/Binder;
.source "IMirrorlinkManager.java"

# interfaces
.implements Lcom/mirrorlink/android/service/IMirrorlinkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/service/IMirrorlinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string/jumbo v0, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p0, p0, v0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 48
    if-nez p0, :cond_0

    .line 49
    return-object v1

    .line 51
    :cond_0
    const-string/jumbo v1, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v1, :cond_1

    .line 53
    check-cast v0, Lcom/mirrorlink/android/service/IMirrorlinkManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 55
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 59
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 63
    sparse-switch p1, :sswitch_data_0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 67
    :sswitch_0
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return v6

    .line 72
    :sswitch_1
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/service/IMirrorlinkListener;

    move-result-object v0

    .line 75
    .local v0, "_arg0":Lcom/mirrorlink/android/service/IMirrorlinkListener;
    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->registerListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v6

    .line 81
    .end local v0    # "_arg0":Lcom/mirrorlink/android/service/IMirrorlinkListener;
    :sswitch_2
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/service/IMirrorlinkListener;

    move-result-object v0

    .line 84
    .restart local v0    # "_arg0":Lcom/mirrorlink/android/service/IMirrorlinkListener;
    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->unRegisterListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v6

    .line 90
    .end local v0    # "_arg0":Lcom/mirrorlink/android/service/IMirrorlinkListener;
    :sswitch_3
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->getAllAppList()Ljava/util/List;

    move-result-object v4

    .line 92
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 94
    return v6

    .line 98
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->performRevocationCheck(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v6

    .line 107
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->performRevocation()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    return v6

    .line 114
    :sswitch_6
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->getApplicationElements(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 118
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {v3, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    :goto_0
    return v6

    .line 124
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 130
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :sswitch_7
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v6

    .line 133
    .local v2, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->setDevMode(Z)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    return v6

    .line 139
    .end local v2    # "_arg0":Z
    :sswitch_8
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v6

    .line 142
    .restart local v2    # "_arg0":Z
    :cond_2
    invoke-virtual {p0, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->writeTerminalVersion(Z)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    return v6

    .line 148
    .end local v2    # "_arg0":Z
    :sswitch_9
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->readTerminalVersion()Z

    move-result v5

    .line 150
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v5, :cond_3

    move v2, v6

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return v6

    .line 63
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
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
