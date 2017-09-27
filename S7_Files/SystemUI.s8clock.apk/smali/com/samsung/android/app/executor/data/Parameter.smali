.class public Lcom/samsung/android/app/executor/data/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/executor/data/Parameter;",
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

.field private isMandatory:Ljava/lang/Boolean;

.field private parameterName:Ljava/lang/String;

.field private parameterType:Ljava/lang/String;

.field private slotName:Ljava/lang/String;

.field private slotType:Ljava/lang/String;

.field private slotValue:Ljava/lang/String;

.field private slotValueType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/samsung/android/app/executor/data/Parameter$1;

    invoke-direct {v0}, Lcom/samsung/android/app/executor/data/Parameter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/executor/data/Parameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/executor/data/Parameter;->CHObjects:Ljava/util/List;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/executor/data/Parameter;->CHObjects:Ljava/util/List;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/executor/data/Parameter;->slotType:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/executor/data/Parameter;->slotName:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/executor/data/Parameter;->slotValue:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/executor/data/Parameter;->slotValueType:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/executor/data/Parameter;->CHObjectType:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eq v4, v2, :cond_0

    .line 190
    iput-object v3, p0, Lcom/samsung/android/app/executor/data/Parameter;->CHObjects:Ljava/util/List;

    .line 192
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/executor/data/Parameter;->parameterName:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/executor/data/Parameter;->parameterType:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .local v0, "isMandatoryVal":B
    const/4 v4, 0x2

    .line 195
    if-eq v0, v4, :cond_1

    if-nez v0, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/samsung/android/app/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    .line 196
    return-void

    .line 187
    .end local v0    # "isMandatoryVal":B
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/executor/data/Parameter;->CHObjects:Ljava/util/List;

    .line 188
    iget-object v4, p0, Lcom/samsung/android/app/executor/data/Parameter;->CHObjects:Ljava/util/List;

    const-class v5, Lcom/samsung/android/app/executor/data/CHObject;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .restart local v0    # "isMandatoryVal":B
    :cond_1
    move-object v1, v3

    .line 195
    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    return v0
.end method

.method public setCHObjectType(Ljava/lang/String;)V
    .locals 0
    .param p1, "CHObjectType"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/Parameter;->CHObjectType:Ljava/lang/String;

    .line 125
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
    .line 109
    .local p1, "CHObjects":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/executor/data/CHObject;>;"
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/Parameter;->CHObjects:Ljava/util/List;

    .line 110
    return-void
.end method

.method public setIsMandatory(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isMandatory"    # Ljava/lang/Boolean;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    .line 178
    return-void
.end method

.method public setParameterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/Parameter;->parameterName:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setParameterType(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameterType"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/Parameter;->parameterType:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setSlotName(Ljava/lang/String;)V
    .locals 0
    .param p1, "slotName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/Parameter;->slotName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setSlotType(Ljava/lang/String;)V
    .locals 0
    .param p1, "slotType"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/Parameter;->slotType:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSlotValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "slotValue"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/Parameter;->slotValue:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setSlotValueType(Ljava/lang/String;)V
    .locals 0
    .param p1, "slotValueType"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/Parameter;->slotValueType:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 205
    iget-object v2, p0, Lcom/samsung/android/app/executor/data/Parameter;->slotType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/samsung/android/app/executor/data/Parameter;->slotName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/samsung/android/app/executor/data/Parameter;->slotValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/samsung/android/app/executor/data/Parameter;->slotValueType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/samsung/android/app/executor/data/Parameter;->CHObjectType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/samsung/android/app/executor/data/Parameter;->CHObjects:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 214
    iget-object v2, p0, Lcom/samsung/android/app/executor/data/Parameter;->CHObjects:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 216
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/executor/data/Parameter;->parameterName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/samsung/android/app/executor/data/Parameter;->parameterType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/samsung/android/app/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/samsung/android/app/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 223
    :goto_2
    return-void

    .line 211
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    :cond_2
    move v0, v1

    .line 221
    goto :goto_1
.end method
