.class public Lcom/hsae/autosdk/reverse/ReverseConst$TurnLightState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/reverse/ReverseConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TurnLightState"
.end annotation


# static fields
.field public static final LEFT_RIGHT_OFF:I = 0x0

.field public static final LEFT_TURN_ON:I = 0x1

.field public static final RIGHT_TURN_ON:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/hsae/autosdk/reverse/ReverseConst;


# direct methods
.method public constructor <init>(Lcom/hsae/autosdk/reverse/ReverseConst;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hsae/autosdk/reverse/ReverseConst$TurnLightState;->this$0:Lcom/hsae/autosdk/reverse/ReverseConst;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
