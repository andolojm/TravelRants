<form class="form" id="postForm" method="post" action="confirm.php?id=<?php echo $id; ?>">
    <h4>Rant Title:</h4>

    <input type="text" name="postTitle" id="postTitle" required />

    <h4>Rant Content:</h4>
    <textarea rows="10" cols="50" name="postText" id="postText" required /></textarea><br />

    <input type="submit" value="I hereby declare that this place sucks" class="btn btn-primary">
</form>