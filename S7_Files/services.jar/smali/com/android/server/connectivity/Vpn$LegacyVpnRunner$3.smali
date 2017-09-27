.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$3;
.super Landroid/net/NetworkAgent;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->agentConnectForKnoxInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .locals 9
    .param p1, "this$1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/content/Context;
    .param p4, "$anonymous2"    # Ljava/lang/String;
    .param p5, "$anonymous3"    # Landroid/net/NetworkInfo;
    .param p6, "$anonymous4"    # Landroid/net/NetworkCapabilities;
    .param p7, "$anonymous5"    # Landroid/net/LinkProperties;
    .param p8, "$anonymous6"    # I
    .param p9, "$anonymous7"    # Landroid/net/NetworkMisc;

    .prologue
    .line 2190
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$3;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    .line 2191
    return-void
.end method


# virtual methods
.method public unwanted()V
    .locals 0

    .prologue
    .line 2193
    return-void
.end method
