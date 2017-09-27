.class public Lcom/samsung/android/app/executor/data/ScreenParameter;
.super Ljava/lang/Object;
.source "ScreenParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/executor/data/ScreenParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CHObjectType:Ljava/lang/String;

.field private CHObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/executor/data/CHObject;",
            ">;"
        }
    .end annotation
.end field

.field private parameterName:Ljava/lang/String;

.field private parameterType:Ljava/lang/String;

.field private slotName:Ljava/lang/String;

.field private slotType:Ljava/lang/String;

.field private slotValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/samsung/android/app/executor/data/ScreenParameter$1;

    invoke-direct {v0}, Lcom/samsung/android/app/executor/data/ScreenParameter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/executor/data/ScreenParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->CHObjects:Ljava/util/List;

    .line 25
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->CHObjects:Ljava/util/List;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->slotType:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->slotName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->slotValue:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->CHObjectType:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/samsung/android/app/executor/data/CHObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->CHObjects:Ljava/util/List;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->parameterName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->parameterType:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    return v0
.end method

.method public setCHObjectType(Ljava/lang/String;)V
    .locals 0
    .param p1, "CHObjectType"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->CHObjectType:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setCHObjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/executor/data/CHObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "CHObjects":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/executor/data/CHObject;>;"
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->CHObjects:Ljava/util/List;

    .line 88
    return-void
.end method

.method public setParameterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->parameterName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setParameterType(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameterType"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->parameterType:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setSlotName(Ljava/lang/String;)V
    .locals 0
    .param p1, "slotName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->slotName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSlotType(Ljava/lang/String;)V
    .locals 0
    .param p1, "slotType"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->slotType:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSlotValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "slotValue"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->slotValue:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->slotType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->slotName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->slotValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->CHObjectType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->CHObjects:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->parameterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/ScreenParameter;->parameterType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return-void
.end method
