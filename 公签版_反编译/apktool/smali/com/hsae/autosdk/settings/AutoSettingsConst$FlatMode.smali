.class public Lcom/hsae/autosdk/settings/AutoSettingsConst$FlatMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/settings/AutoSettingsConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlatMode"
.end annotation


# static fields
.field public static final ALL:I = 0x0

.field public static final DISABLE_AV:I = 0x1

.field public static final DISABLE_EV:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/hsae/autosdk/settings/AutoSettingsConst;


# direct methods
.method public constructor <init>(Lcom/hsae/autosdk/settings/AutoSettingsConst;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hsae/autosdk/settings/AutoSettingsConst$FlatMode;->this$0:Lcom/hsae/autosdk/settings/AutoSettingsConst;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
