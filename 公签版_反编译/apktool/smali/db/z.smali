.class public final Ldb/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/ref/WeakReference;

.field public final c:Ldb/p;


# direct methods
.method public constructor <init>(Ldb/p;Ljava/lang/Class;Ldb/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ldb/z;->a:Ljava/lang/Class;

    .line 5
    .line 6
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Ldb/z;->b:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    iput-object p1, p0, Ldb/z;->c:Ldb/p;

    .line 14
    .line 15
    return-void
.end method
