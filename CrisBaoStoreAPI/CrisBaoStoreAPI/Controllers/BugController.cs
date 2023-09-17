using Microsoft.AspNetCore.Mvc;

namespace CrisBaoStoreAPI.Controllers
{
    public class BugController : ControllerBase
    {
        [HttpGet("api/not-found")]
        public ActionResult GetNotFound()
        {
            return NotFound(new ProblemDetails { Title = "Not Found"});
        }

        [HttpGet("api/bad-request")]
        public ActionResult GetBadRequest() 
        {
            return BadRequest(new ProblemDetails { Title = "This is a bad request"});
        }

        [HttpGet("api/unauthoried")]
        public ActionResult GetUnauthorised()
        {
            return Unauthorized(new ProblemDetails { Title = "Unauthoried"});
        }

        [HttpGet("api/validation-error")]
        public ActionResult GetValidationError()
        {
            ModelState.AddModelError("Problem1", "This is the first error");
            ModelState.AddModelError("Problem2", "This is the second error");
            return ValidationProblem();
        }

        [HttpGet("api/server-error")]
        public ActionResult GetServerError()
        {
            throw new Exception("This is a server error");
        }
    }
}
