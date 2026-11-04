.class public final Lq4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq4/i;

.field public final b:I

.field public final c:Lq4/b;


# direct methods
.method public constructor <init>(Lq4/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq4/d;->a:Lq4/i;

    .line 5
    .line 6
    iput p2, p0, Lq4/d;->b:I

    .line 7
    .line 8
    new-instance p1, Lq4/b;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lq4/b;-><init>(Lq4/d;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lq4/d;->c:Lq4/b;

    .line 14
    .line 15
    return-void
.end method
