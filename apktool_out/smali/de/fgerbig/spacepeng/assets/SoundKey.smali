.class public final enum Lde/fgerbig/spacepeng/assets/SoundKey;
.super Ljava/lang/Enum;
.source "SoundKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/fgerbig/spacepeng/assets/SoundKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/fgerbig/spacepeng/assets/SoundKey;

.field public static final enum ALIEN_BOSS_EXPLOSION:Lde/fgerbig/spacepeng/assets/SoundKey;

.field public static final enum ALIEN_BOSS_HIT:Lde/fgerbig/spacepeng/assets/SoundKey;

.field public static final enum ALIEN_EXPLOSION:Lde/fgerbig/spacepeng/assets/SoundKey;

.field public static final enum ALIEN_SHOT:Lde/fgerbig/spacepeng/assets/SoundKey;

.field public static final enum BOING:Lde/fgerbig/spacepeng/assets/SoundKey;

.field public static final enum CLICK:Lde/fgerbig/spacepeng/assets/SoundKey;

.field public static final enum PLAYER_EXPLOSION:Lde/fgerbig/spacepeng/assets/SoundKey;

.field public static final enum PLAYER_SHOT:Lde/fgerbig/spacepeng/assets/SoundKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    new-instance v0, Lde/fgerbig/spacepeng/assets/SoundKey;

    const-string v1, "BOING"

    const-string v2, "sound/boing.ogg"

    invoke-direct {v0, v1, v4, v2}, Lde/fgerbig/spacepeng/assets/SoundKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lde/fgerbig/spacepeng/assets/SoundKey;->BOING:Lde/fgerbig/spacepeng/assets/SoundKey;

    .line 22
    new-instance v0, Lde/fgerbig/spacepeng/assets/SoundKey;

    const-string v1, "CLICK"

    const-string v2, "sound/click.ogg"

    invoke-direct {v0, v1, v5, v2}, Lde/fgerbig/spacepeng/assets/SoundKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lde/fgerbig/spacepeng/assets/SoundKey;->CLICK:Lde/fgerbig/spacepeng/assets/SoundKey;

    .line 23
    new-instance v0, Lde/fgerbig/spacepeng/assets/SoundKey;

    const-string v1, "ALIEN_SHOT"

    const-string v2, "sound/alienshot.ogg"

    invoke-direct {v0, v1, v6, v2}, Lde/fgerbig/spacepeng/assets/SoundKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lde/fgerbig/spacepeng/assets/SoundKey;->ALIEN_SHOT:Lde/fgerbig/spacepeng/assets/SoundKey;

    .line 24
    new-instance v0, Lde/fgerbig/spacepeng/assets/SoundKey;

    const-string v1, "ALIEN_EXPLOSION"

    const-string v2, "sound/alienexplosion.ogg"

    invoke-direct {v0, v1, v7, v2}, Lde/fgerbig/spacepeng/assets/SoundKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lde/fgerbig/spacepeng/assets/SoundKey;->ALIEN_EXPLOSION:Lde/fgerbig/spacepeng/assets/SoundKey;

    .line 25
    new-instance v0, Lde/fgerbig/spacepeng/assets/SoundKey;

    const-string v1, "ALIEN_BOSS_HIT"

    const-string v2, "sound/alienbosshit.ogg"

    invoke-direct {v0, v1, v8, v2}, Lde/fgerbig/spacepeng/assets/SoundKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lde/fgerbig/spacepeng/assets/SoundKey;->ALIEN_BOSS_HIT:Lde/fgerbig/spacepeng/assets/SoundKey;

    .line 26
    new-instance v0, Lde/fgerbig/spacepeng/assets/SoundKey;

    const-string v1, "ALIEN_BOSS_EXPLOSION"

    const/4 v2, 0x5

    const-string v3, "sound/alienbossexplosion.ogg"

    invoke-direct {v0, v1, v2, v3}, Lde/fgerbig/spacepeng/assets/SoundKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lde/fgerbig/spacepeng/assets/SoundKey;->ALIEN_BOSS_EXPLOSION:Lde/fgerbig/spacepeng/assets/SoundKey;

    .line 27
    new-instance v0, Lde/fgerbig/spacepeng/assets/SoundKey;

    const-string v1, "PLAYER_SHOT"

    const/4 v2, 0x6

    const-string v3, "sound/playershot.ogg"

    invoke-direct {v0, v1, v2, v3}, Lde/fgerbig/spacepeng/assets/SoundKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lde/fgerbig/spacepeng/assets/SoundKey;->PLAYER_SHOT:Lde/fgerbig/spacepeng/assets/SoundKey;

    .line 28
    new-instance v0, Lde/fgerbig/spacepeng/assets/SoundKey;

    const-string v1, "PLAYER_EXPLOSION"

    const/4 v2, 0x7

    const-string v3, "sound/playerexplosion.ogg"

    invoke-direct {v0, v1, v2, v3}, Lde/fgerbig/spacepeng/assets/SoundKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lde/fgerbig/spacepeng/assets/SoundKey;->PLAYER_EXPLOSION:Lde/fgerbig/spacepeng/assets/SoundKey;

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [Lde/fgerbig/spacepeng/assets/SoundKey;

    sget-object v1, Lde/fgerbig/spacepeng/assets/SoundKey;->BOING:Lde/fgerbig/spacepeng/assets/SoundKey;

    aput-object v1, v0, v4

    sget-object v1, Lde/fgerbig/spacepeng/assets/SoundKey;->CLICK:Lde/fgerbig/spacepeng/assets/SoundKey;

    aput-object v1, v0, v5

    sget-object v1, Lde/fgerbig/spacepeng/assets/SoundKey;->ALIEN_SHOT:Lde/fgerbig/spacepeng/assets/SoundKey;

    aput-object v1, v0, v6

    sget-object v1, Lde/fgerbig/spacepeng/assets/SoundKey;->ALIEN_EXPLOSION:Lde/fgerbig/spacepeng/assets/SoundKey;

    aput-object v1, v0, v7

    sget-object v1, Lde/fgerbig/spacepeng/assets/SoundKey;->ALIEN_BOSS_HIT:Lde/fgerbig/spacepeng/assets/SoundKey;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lde/fgerbig/spacepeng/assets/SoundKey;->ALIEN_BOSS_EXPLOSION:Lde/fgerbig/spacepeng/assets/SoundKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lde/fgerbig/spacepeng/assets/SoundKey;->PLAYER_SHOT:Lde/fgerbig/spacepeng/assets/SoundKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lde/fgerbig/spacepeng/assets/SoundKey;->PLAYER_EXPLOSION:Lde/fgerbig/spacepeng/assets/SoundKey;

    aput-object v2, v0, v1

    sput-object v0, Lde/fgerbig/spacepeng/assets/SoundKey;->$VALUES:[Lde/fgerbig/spacepeng/assets/SoundKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lde/fgerbig/spacepeng/assets/SoundKey;->key:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/fgerbig/spacepeng/assets/SoundKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/assets/SoundKey;

    return-object v0
.end method

.method public static values()[Lde/fgerbig/spacepeng/assets/SoundKey;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lde/fgerbig/spacepeng/assets/SoundKey;->$VALUES:[Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-virtual {v0}, [Lde/fgerbig/spacepeng/assets/SoundKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/fgerbig/spacepeng/assets/SoundKey;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lde/fgerbig/spacepeng/assets/SoundKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lde/fgerbig/spacepeng/assets/SoundKey;->key:Ljava/lang/String;

    return-object v0
.end method
