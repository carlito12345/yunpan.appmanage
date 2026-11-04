.class public final Lr3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lqa/e;


# instance fields
.field public final a:Lr3/e;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqa/e;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lqa/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lr3/d;->c:Lqa/e;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lr3/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr3/d;->a:Lr3/e;

    .line 5
    .line 6
    iput p2, p0, Lr3/d;->b:I

    .line 7
    .line 8
    return-void
.end method
