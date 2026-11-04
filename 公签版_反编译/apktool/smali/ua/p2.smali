.class public final Lua/p2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lua/p2;->d:I

    .line 6
    .line 7
    iput-object p1, p0, Lua/p2;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lua/p2;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean p3, p0, Lua/p2;->c:Z

    .line 12
    .line 13
    return-void
.end method
