.class public final Lcom/hsae/autosdk/p001os/SocConst$Upgrade;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/p001os/SocConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Upgrade"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/p001os/SocConst$Upgrade$Type;,
        Lcom/hsae/autosdk/p001os/SocConst$Upgrade$MCU;,
        Lcom/hsae/autosdk/p001os/SocConst$Upgrade$CPU;
    }
.end annotation


# static fields
.field public static final CPU_CMD:B = 0x21t

.field public static final CUPID_CMD:B = 0x31t

.field public static final CUPID_DATA:B = 0x32t

.field public static final FLASH_CMD:B = 0x11t

.field public static final FLASH_DATA:B = 0x12t

.field public static final MCU_CMD:B = 0x1t

.field public static final MCU_DATA:B = 0x2t


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
