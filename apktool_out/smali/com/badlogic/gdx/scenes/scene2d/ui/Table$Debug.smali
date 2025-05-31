.class public final enum Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;
.super Ljava/lang/Enum;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Debug"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field public static final enum actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field public static final enum all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field public static final enum cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field public static final enum none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field public static final enum table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1208
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const-string v1, "none"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const-string v1, "all"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const-string v1, "table"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const-string v1, "cell"

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const-string v1, "actor"

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 1207
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    aput-object v1, v0, v6

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1207
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;
    .locals 1

    .prologue
    .line 1207
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    return-object v0
.end method
