.class public final Lcom/hsae/autosdk/p001os/SocConst$Upgrade$MCU;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/p001os/SocConst$Upgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MCU"
.end annotation


# static fields
.field public static final CMD_LENGTH:I = 0x5

.field public static final DATA_LENGTH:I = 0x6

.field public static final DONE:I = 0x82

.field public static final FAILED:I = 0x84

.field public static final REDO:I = 0x83

.field public static final SENDING_START:I = 0x0

.field public static final UPGRADING:I = 0x81


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
