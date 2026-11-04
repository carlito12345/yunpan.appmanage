.class public final Lqh/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Lqh/c;

.field public final b:Lph/k;

.field public final c:Lqh/d0;

.field public d:Lqh/h0;


# direct methods
.method public constructor <init>(Lqh/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 3
    iput-object p1, p0, Lqh/e0;->a:Lqh/c;

    .line 4
    sget-object p1, Lqh/d0;->c:Lqh/d0;

    iput-object p1, p0, Lqh/e0;->c:Lqh/d0;

    .line 5
    new-instance p1, Lph/k;

    invoke-direct {p1}, Lph/k;-><init>()V

    .line 6
    iput-object p1, p0, Lqh/e0;->b:Lph/k;

    return-void
.end method

.method public constructor <init>(Lqh/e0;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 9
    iget-object v0, p1, Lqh/e0;->a:Lqh/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v0, Lqh/c;

    invoke-direct {v0}, Lqh/c;-><init>()V

    .line 11
    iput-object v0, p0, Lqh/e0;->a:Lqh/c;

    .line 12
    new-instance v0, Lph/k;

    iget-object v1, p1, Lqh/e0;->b:Lph/k;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Lph/k;-><init>()V

    .line 14
    iput-object v0, p0, Lqh/e0;->b:Lph/k;

    .line 15
    new-instance v0, Lqh/d0;

    iget-object p1, p1, Lqh/e0;->c:Lqh/d0;

    .line 16
    iget-boolean v1, p1, Lqh/d0;->a:Z

    iget-boolean p1, p1, Lqh/d0;->b:Z

    invoke-direct {v0, v1, p1}, Lqh/d0;-><init>(ZZ)V

    .line 17
    iput-object v0, p0, Lqh/e0;->c:Lqh/d0;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lqh/e0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lqh/e0;-><init>(Lqh/e0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
