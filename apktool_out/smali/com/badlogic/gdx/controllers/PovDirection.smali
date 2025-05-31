.class public final enum Lcom/badlogic/gdx/controllers/PovDirection;
.super Ljava/lang/Enum;
.source "PovDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/controllers/PovDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/controllers/PovDirection;

.field public static final enum center:Lcom/badlogic/gdx/controllers/PovDirection;

.field public static final enum east:Lcom/badlogic/gdx/controllers/PovDirection;

.field public static final enum north:Lcom/badlogic/gdx/controllers/PovDirection;

.field public static final enum northEast:Lcom/badlogic/gdx/controllers/PovDirection;

.field public static final enum northWest:Lcom/badlogic/gdx/controllers/PovDirection;

.field public static final enum south:Lcom/badlogic/gdx/controllers/PovDirection;

.field public static final enum southEast:Lcom/badlogic/gdx/controllers/PovDirection;

.field public static final enum southWest:Lcom/badlogic/gdx/controllers/PovDirection;

.field public static final enum west:Lcom/badlogic/gdx/controllers/PovDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/badlogic/gdx/controllers/PovDirection;

    const-string v1, "center"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/controllers/PovDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/PovDirection;->center:Lcom/badlogic/gdx/controllers/PovDirection;

    new-instance v0, Lcom/badlogic/gdx/controllers/PovDirection;

    const-string v1, "north"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/controllers/PovDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/PovDirection;->north:Lcom/badlogic/gdx/controllers/PovDirection;

    new-instance v0, Lcom/badlogic/gdx/controllers/PovDirection;

    const-string v1, "south"

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/controllers/PovDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/PovDirection;->south:Lcom/badlogic/gdx/controllers/PovDirection;

    new-instance v0, Lcom/badlogic/gdx/controllers/PovDirection;

    const-string v1, "east"

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/controllers/PovDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/PovDirection;->east:Lcom/badlogic/gdx/controllers/PovDirection;

    new-instance v0, Lcom/badlogic/gdx/controllers/PovDirection;

    const-string v1, "west"

    invoke-direct {v0, v1, v7}, Lcom/badlogic/gdx/controllers/PovDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/PovDirection;->west:Lcom/badlogic/gdx/controllers/PovDirection;

    new-instance v0, Lcom/badlogic/gdx/controllers/PovDirection;

    const-string v1, "northEast"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/controllers/PovDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/PovDirection;->northEast:Lcom/badlogic/gdx/controllers/PovDirection;

    new-instance v0, Lcom/badlogic/gdx/controllers/PovDirection;

    const-string v1, "southEast"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/controllers/PovDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/PovDirection;->southEast:Lcom/badlogic/gdx/controllers/PovDirection;

    new-instance v0, Lcom/badlogic/gdx/controllers/PovDirection;

    const-string v1, "northWest"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/controllers/PovDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/PovDirection;->northWest:Lcom/badlogic/gdx/controllers/PovDirection;

    new-instance v0, Lcom/badlogic/gdx/controllers/PovDirection;

    const-string v1, "southWest"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/controllers/PovDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/PovDirection;->southWest:Lcom/badlogic/gdx/controllers/PovDirection;

    .line 20
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/badlogic/gdx/controllers/PovDirection;

    sget-object v1, Lcom/badlogic/gdx/controllers/PovDirection;->center:Lcom/badlogic/gdx/controllers/PovDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/controllers/PovDirection;->north:Lcom/badlogic/gdx/controllers/PovDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/controllers/PovDirection;->south:Lcom/badlogic/gdx/controllers/PovDirection;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/controllers/PovDirection;->east:Lcom/badlogic/gdx/controllers/PovDirection;

    aput-object v1, v0, v6

    sget-object v1, Lcom/badlogic/gdx/controllers/PovDirection;->west:Lcom/badlogic/gdx/controllers/PovDirection;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/controllers/PovDirection;->northEast:Lcom/badlogic/gdx/controllers/PovDirection;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/badlogic/gdx/controllers/PovDirection;->southEast:Lcom/badlogic/gdx/controllers/PovDirection;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/badlogic/gdx/controllers/PovDirection;->northWest:Lcom/badlogic/gdx/controllers/PovDirection;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/badlogic/gdx/controllers/PovDirection;->southWest:Lcom/badlogic/gdx/controllers/PovDirection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/controllers/PovDirection;->$VALUES:[Lcom/badlogic/gdx/controllers/PovDirection;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/controllers/PovDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/badlogic/gdx/controllers/PovDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/controllers/PovDirection;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/controllers/PovDirection;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/badlogic/gdx/controllers/PovDirection;->$VALUES:[Lcom/badlogic/gdx/controllers/PovDirection;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/controllers/PovDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/controllers/PovDirection;

    return-object v0
.end method
