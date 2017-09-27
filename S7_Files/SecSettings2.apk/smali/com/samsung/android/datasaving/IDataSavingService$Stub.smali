.class public abstract Lcom/samsung/android/datasaving/IDataSavingService$Stub;
.super Landroid/os/Binder;
.source "IDataSavingService.java"

# interfaces
.implements Lcom/samsung/android/datasaving/IDataSavingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/datasaving/IDataSavingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/datasaving/IDataSavingService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.samsung.android.datasaving.IDataSavingService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/datasaving/IDataSavingService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.samsung.android.datasaving.IDataSavingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/datasaving/IDataSavingService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/datasaving/IDataSavingService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 112
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 42
    :sswitch_0
    const-string/jumbo v0, "com.samsung.android.datasaving.IDataSavingService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    return v0

    .line 47
    :sswitch_1
    const-string/jumbo v0, "com.samsung.android.datasaving.IDataSavingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->startSaving()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    const/4 v0, 0x1

    return v0

    .line 54
    :sswitch_2
    const-string/jumbo v0, "com.samsung.android.datasaving.IDataSavingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->stopSaving()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/4 v0, 0x1

    return v0

    .line 61
    :sswitch_3
    const-string/jumbo v0, "com.samsung.android.datasaving.IDataSavingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->bindServices()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v0, 0x1

    return v0

    .line 68
    :sswitch_4
    const-string/jumbo v0, "com.samsung.android.datasaving.IDataSavingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 74
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg2":J
    move-object v0, p0

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->getSavedBytesByUid(IJJ)J

    move-result-wide v10

    .line 76
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    const/4 v0, 0x1

    return v0

    .line 82
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v10    # "_result":J
    :sswitch_5
    const-string/jumbo v0, "com.samsung.android.datasaving.IDataSavingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 85
    .local v6, "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->getUsageText(J)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    return v0

    .line 92
    .end local v6    # "_arg0":J
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v0, "com.samsung.android.datasaving.IDataSavingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 96
    .restart local v6    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 97
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->getSavedBytesForAllUid(JJ)J

    move-result-wide v10

    .line 98
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    const/4 v0, 0x1

    return v0

    .line 104
    .end local v2    # "_arg1":J
    .end local v6    # "_arg0":J
    .end local v10    # "_result":J
    :sswitch_7
    const-string/jumbo v0, "com.samsung.android.datasaving.IDataSavingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->setCurrentIMSI(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    const/4 v0, 0x1

    return v0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
