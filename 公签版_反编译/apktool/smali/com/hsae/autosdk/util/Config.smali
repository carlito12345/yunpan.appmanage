.class public final Lcom/hsae/autosdk/util/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATE:J

.field public static final RECOVERY_MECHANISM_DELAY:I = 0xf

.field public static final TAG:Ljava/lang/String; = "CCS2.0"

.field public static final VERSION_CPU_HW:Ljava/lang/String; = "S00.00"

.field public static final VERSION_CPU_SW:Ljava/lang/String; = "0041GM9103"

.field public static final developing:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sput-wide v0, Lcom/hsae/autosdk/util/Config;->DATE:J

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
