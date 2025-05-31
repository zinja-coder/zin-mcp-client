.class public final enum Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;
.super Ljava/lang/Enum;
.source "TiledMapTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

.field public static final enum ALPHA:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

.field public static final enum NONE:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->NONE:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    const-string v1, "ALPHA"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->ALPHA:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    sget-object v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->NONE:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->ALPHA:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->$VALUES:[Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->$VALUES:[Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    return-object v0
.end method
