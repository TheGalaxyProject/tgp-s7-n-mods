.class final Lcom/opera/max/sdk/traffic/TrafficEntry$1;
.super Ljava/lang/Object;
.source "TrafficEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opera/max/sdk/traffic/TrafficEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/opera/max/sdk/traffic/TrafficEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/opera/max/sdk/traffic/TrafficEntry;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    new-instance v0, Lcom/opera/max/sdk/traffic/TrafficEntry;

    invoke-direct {v0, p1}, Lcom/opera/max/sdk/traffic/TrafficEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/opera/max/sdk/traffic/TrafficEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/opera/max/sdk/traffic/TrafficEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/opera/max/sdk/traffic/TrafficEntry;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 34
    new-array v0, p1, [Lcom/opera/max/sdk/traffic/TrafficEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/opera/max/sdk/traffic/TrafficEntry$1;->newArray(I)[Lcom/opera/max/sdk/traffic/TrafficEntry;

    move-result-object v0

    return-object v0
.end method
