.class public abstract Landroid/net/INetd$Stub;
.super Landroid/os/Binder;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetd"

.field static final TRANSACTION_bandwidthEnableDataSaver:I = 0x3

.field static final TRANSACTION_firewallReplaceUidChain:I = 0x2

.field static final TRANSACTION_getResolverInfo:I = 0x7

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_networkRejectNonSecureVpn:I = 0x4

.field static final TRANSACTION_setResolverConfiguration:I = 0x6

.field static final TRANSACTION_setSystemServerPID:I = 0x8

.field static final TRANSACTION_socketDestroy:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.net.INetd"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetd;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/net/INetd;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetd$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 171
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 43
    :sswitch_0
    const-string/jumbo v1, "android.net.INetd"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x1

    return v1

    .line 48
    :sswitch_1
    const-string/jumbo v1, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->isAlive()Z

    move-result v18

    .line 50
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v18, :cond_0

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/4 v1, 0x1

    return v1

    .line 51
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 56
    .end local v18    # "_result":Z
    :sswitch_2
    const-string/jumbo v1, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    .line 62
    .local v10, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v14

    .line 63
    .local v14, "_arg2":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10, v14}, Landroid/net/INetd$Stub;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v18

    .line 64
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v18, :cond_2

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v1, 0x1

    return v1

    .line 60
    .end local v10    # "_arg1":Z
    .end local v14    # "_arg2":[I
    .end local v18    # "_result":Z
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "_arg1":Z
    goto :goto_1

    .line 65
    .restart local v14    # "_arg2":[I
    .restart local v18    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 70
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Z
    .end local v14    # "_arg2":[I
    .end local v18    # "_result":Z
    :sswitch_3
    const-string/jumbo v1, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v8, 0x1

    .line 73
    .local v8, "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/INetd$Stub;->bandwidthEnableDataSaver(Z)Z

    move-result v18

    .line 74
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v18, :cond_4

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v1, 0x1

    return v1

    .line 72
    .end local v8    # "_arg0":Z
    .end local v18    # "_result":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 75
    .restart local v8    # "_arg0":Z
    .restart local v18    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 80
    .end local v8    # "_arg0":Z
    .end local v18    # "_result":Z
    :sswitch_4
    const-string/jumbo v1, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v8, 0x1

    .line 84
    .local v8, "_arg0":Z
    :goto_5
    sget-object v1, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/net/UidRange;

    .line 85
    .local v12, "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Landroid/net/INetd$Stub;->networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    const/4 v1, 0x1

    return v1

    .line 82
    .end local v8    # "_arg0":Z
    .end local v12    # "_arg1":[Landroid/net/UidRange;
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_5

    .line 91
    .end local v8    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v1, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    sget-object v1, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/UidRange;

    .line 95
    .local v9, "_arg0":[Landroid/net/UidRange;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v11

    .line 96
    .local v11, "_arg1":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Landroid/net/INetd$Stub;->socketDestroy([Landroid/net/UidRange;[I)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    const/4 v1, 0x1

    return v1

    .line 102
    .end local v9    # "_arg0":[Landroid/net/UidRange;
    .end local v11    # "_arg1":[I
    :sswitch_6
    const-string/jumbo v1, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 111
    .local v5, "_arg3":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/net/INetd$Stub;->setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v1, 0x1

    return v1

    .line 117
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":[Ljava/lang/String;
    .end local v5    # "_arg3":[I
    :sswitch_7
    const-string/jumbo v1, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 122
    .local v13, "_arg1_length":I
    if-gez v13, :cond_6

    .line 123
    const/4 v3, 0x0

    .line 129
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 130
    .local v15, "_arg2_length":I
    if-gez v15, :cond_7

    .line 131
    const/4 v4, 0x0

    .line 137
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 138
    .local v16, "_arg3_length":I
    if-gez v16, :cond_8

    .line 139
    const/4 v5, 0x0

    .line 145
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 146
    .local v17, "_arg4_length":I
    if-gez v17, :cond_9

    .line 147
    const/4 v6, 0x0

    :goto_9
    move-object/from16 v1, p0

    .line 152
    invoke-virtual/range {v1 .. v6}, Landroid/net/INetd$Stub;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[I[I)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 158
    const/4 v1, 0x1

    return v1

    .line 126
    .end local v15    # "_arg2_length":I
    .end local v16    # "_arg3_length":I
    .end local v17    # "_arg4_length":I
    :cond_6
    new-array v3, v13, [Ljava/lang/String;

    .restart local v3    # "_arg1":[Ljava/lang/String;
    goto :goto_6

    .line 134
    .end local v3    # "_arg1":[Ljava/lang/String;
    .restart local v15    # "_arg2_length":I
    :cond_7
    new-array v4, v15, [Ljava/lang/String;

    .restart local v4    # "_arg2":[Ljava/lang/String;
    goto :goto_7

    .line 142
    .end local v4    # "_arg2":[Ljava/lang/String;
    .restart local v16    # "_arg3_length":I
    :cond_8
    move/from16 v0, v16

    new-array v5, v0, [I

    .restart local v5    # "_arg3":[I
    goto :goto_8

    .line 150
    .end local v5    # "_arg3":[I
    .restart local v17    # "_arg4_length":I
    :cond_9
    move/from16 v0, v17

    new-array v6, v0, [I

    .local v6, "_arg4":[I
    goto :goto_9

    .line 162
    .end local v2    # "_arg0":I
    .end local v6    # "_arg4":[I
    .end local v13    # "_arg1_length":I
    .end local v15    # "_arg2_length":I
    .end local v16    # "_arg3_length":I
    .end local v17    # "_arg4_length":I
    :sswitch_8
    const-string/jumbo v1, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/net/INetd$Stub;->setSystemServerPID(I)Z

    move-result v18

    .line 166
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v18, :cond_a

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v1, 0x1

    return v1

    .line 167
    :cond_a
    const/4 v1, 0x0

    goto :goto_a

    .line 39
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
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
