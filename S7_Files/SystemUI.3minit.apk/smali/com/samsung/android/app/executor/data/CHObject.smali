.class public Lcom/samsung/android/app/executor/data/CHObject;
.super Ljava/lang/Object;
.source "CHObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/executor/data/CHObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CH_Type:Ljava/lang/String;

.field private CH_Value:Ljava/lang/String;

.field private CH_ValueType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/samsung/android/app/executor/data/CHObject$1;

    invoke-direct {v0}, Lcom/samsung/android/app/executor/data/CHObject$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/executor/data/CHObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/executor/data/CHObject;->CH_Type:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/executor/data/CHObject;->CH_Value:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/executor/data/CHObject;->CH_ValueType:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    return v0
.end method

.method public setCHType(Ljava/lang/String;)V
    .locals 0
    .param p1, "CHType"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/CHObject;->CH_Type:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setCHValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "CHValue"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/CHObject;->CH_Value:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setCHValueType(Ljava/lang/String;)V
    .locals 0
    .param p1, "CHValueType"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/CHObject;->CH_ValueType:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/CHObject;->CH_Type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/CHObject;->CH_Value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/CHObject;->CH_ValueType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
