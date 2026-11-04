.class public abstract Landroidx/room/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final version:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/room/q;->version:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract createAllTables(Lc4/a;)V
.end method

.method public abstract dropAllTables(Lc4/a;)V
.end method

.method public abstract onCreate(Lc4/a;)V
.end method

.method public abstract onOpen(Lc4/a;)V
.end method

.method public abstract onPostMigrate(Lc4/a;)V
.end method

.method public abstract onPreMigrate(Lc4/a;)V
.end method

.method public abstract onValidateSchema(Lc4/a;)Landroidx/room/r;
.end method

.method public validateMigration(Lc4/a;)V
    .locals 1

    .line 1
    const-string v0, "db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v0, "validateMigration is deprecated"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
