.class Lcom/android/systemui/statusbar/policy/EthernetIcons;
.super Ljava/lang/Object;
.source "EthernetIcons.java"


# static fields
.field static final ETHERNET_ICONS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 23
    new-array v1, v4, [I

    const v2, 0x7f0205c9

    aput v2, v1, v3

    aput-object v1, v0, v3

    .line 24
    new-array v1, v4, [I

    const v2, 0x7f0205ca

    aput v2, v1, v3

    aput-object v1, v0, v4

    .line 22
    sput-object v0, Lcom/android/systemui/statusbar/policy/EthernetIcons;->ETHERNET_ICONS:[[I

    .line 21
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
